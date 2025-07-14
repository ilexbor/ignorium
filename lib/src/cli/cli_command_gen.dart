import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:ignorium/src/cli/cli_command.dart';
import 'package:ignorium/src/usecase/usecase_overwrite_gitignore_files.dart';
import 'package:path/path.dart' as path;

class GenCliCommand extends CliCommand {
  GenCliCommand() {
    argParser.addFlag(
      'recursive',
      abbr: 'r',
      help: 'Scan directories recursively (default: true).',
      defaultsTo: true,
    );
  }

  @override
  String get name => 'gen';

  @override
  String get description => 'Generate .gitignore files based on technologies detected in the target directory.';

  @override
  Future<void> run() async {
    final args = argResults;

    if (args == null) {
      throw StateError('args == null');
    }

    final searchDirectory = _parseSearchDirectoryPath(args.rest);

    final recursive = args.flag('recursive');

    await OverwriteGitignoreFilesUseCase(
      searchDirectory: searchDirectory,
      recursive: recursive,
    ).call();
  }

  Directory _parseSearchDirectoryPath(List<String> rest) {
    if (rest.isEmpty) {
      return Directory.current;
    }

    final args = rest.where((element) => element.isNotEmpty);

    if (args.length != 1) {
      throw UsageException('Arguments `${rest.join(' ')}` is not a directory path.', usage);
    }

    final searchDirectoryPathFromUser = rest[0];

    final searchDirectoryPath = path.canonicalize(searchDirectoryPathFromUser);

    final searchDirectory = Directory(searchDirectoryPath);

    if (!searchDirectory.existsSync()) {
      throw StateError('Directory `$searchDirectoryPath` not found');
    }

    return searchDirectory;
  }
}
