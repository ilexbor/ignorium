import 'dart:io';

import 'package:collection/collection.dart';
import 'package:ignorium/src/gitignore/gitignore_buffer.dart';
import 'package:ignorium/src/gitignore/gitignore_buffer_deserializer.dart';
import 'package:ignorium/src/gitignore/gitignore_buffer_serializer.dart';
import 'package:ignorium/src/gitignore/gitignore_directory_finder.dart';
import 'package:ignorium/src/gitignore/gitignore_file_reader.dart';
import 'package:ignorium/src/gitignore/gitignore_file_writer.dart';
import 'package:ignorium/src/gitignore/gitignore_ruleset.dart';
import 'package:ignorium/src/gitignore/gitignore_ruleset_resolver.dart';
import 'package:ignorium/src/trigger/trigger.dart';
import 'package:ignorium/src/trigger/trigger_finder.dart';
import 'package:ignorium/src/usecase/usecase.dart';
import 'package:path/path.dart' as path;

class OverwriteGitignoreFilesUseCase implements UseCase<void> {
  OverwriteGitignoreFilesUseCase({
    required bool recursive,
    required Directory searchDirectory,
    GitignoreBufferDeserializer? deserializer,
    GitignoreDirectoryFinder? directoryFinder,
    GitignoreFileReader? fileReader,
    GitignoreFileWriter? fileWriter,
    GitignoreRuleSetResolver? ruleSetResolver,
    GitignoreBufferSerializer? serializer,
    TriggerFinder? triggerFinder,
  })  : _directoryFinder = directoryFinder ?? GitignoreDirectoryFinder(),
        _fileReader = fileReader ?? GitignoreFileReader(deserializer: deserializer),
        _fileWriter = fileWriter ?? GitignoreFileWriter(serializer: serializer),
        _recursive = recursive,
        _ruleSetResolver = ruleSetResolver ?? GitignoreRuleSetResolver(),
        _searchDirectory = searchDirectory,
        _triggerFinder = triggerFinder ?? const TriggerFinder();

  final GitignoreDirectoryFinder _directoryFinder;
  final GitignoreFileReader _fileReader;
  final GitignoreFileWriter _fileWriter;
  final bool _recursive;
  final GitignoreRuleSetResolver _ruleSetResolver;
  final Directory _searchDirectory;
  final TriggerFinder _triggerFinder;

  @override
  Future<void> call() async {
    final triggers = await _triggerFinder.call(
      directory: _searchDirectory,
      recursive: _recursive,
    );

    final directoryToTriggerMap = await _directoryFinder.call(triggers);

    final directoryPaths = directoryToTriggerMap.keys.sortedBy((path) => path);

    for (final directoryPath in directoryPaths) {
      final buffer = await _readGitignoreFileToBuffer(directoryPath);

      final ruleSets = _resolveRuleSets(directoryPath, directoryToTriggerMap);

      buffer.autoGenerateRuleSets = ruleSets;

      await _writeBufferToGitignoreFile(buffer, directoryPath);
    }
  }

  Future<GitignoreBuffer> _readGitignoreFileToBuffer(String directoryPath) async {
    final canonicalizedPath = path.canonicalize('$directoryPath/.gitignore');

    final file = File(canonicalizedPath);

    final buffer = await _fileReader.call(file) ?? GitignoreBuffer();

    return buffer;
  }

  Future<void> _writeBufferToGitignoreFile(GitignoreBuffer buffer, String directoryPath) async {
    final canonicalizedPath = path.canonicalize('$directoryPath/.gitignore');

    final file = File(canonicalizedPath);

    await _fileWriter.call(buffer, file);
  }

  Iterable<GitignoreRuleSet> _resolveRuleSets(String directoryPath, Map<String, List<Trigger>> directoryToTriggerMap) {
    final triggers = directoryToTriggerMap[directoryPath];

    if (triggers == null) {
      return [];
    }

    final rulesets = _ruleSetResolver.call(triggers);

    return rulesets;
  }
}
