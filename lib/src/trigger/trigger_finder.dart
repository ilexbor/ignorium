import 'dart:async';
import 'dart:io';

import 'package:ignorium/src/trigger/trigger.dart';
import 'package:meta/meta.dart';

@internal
class TriggerFinder {
  const TriggerFinder();

  Future<List<Trigger>> call({
    required Directory directory,
    bool recursive = false,
  }) async {
    final triggers = <Trigger>[];

    final fileSystemEntitiesStream = directory.list(
      recursive: recursive,
      followLinks: false,
    );

    await for (final fileSystemEntity in fileSystemEntitiesStream) {
      final foundTriggers = await _processFileSystemEntity(fileSystemEntity);
      triggers.addAll(foundTriggers);
    }

    return triggers;
  }

  Future<Iterable<Trigger>> _processFileSystemEntity(FileSystemEntity fileSystemEntity) {
    return switch (fileSystemEntity) {
      Directory() => _processDirectory(fileSystemEntity),
      File() => _processFile(fileSystemEntity),
      Link() => Future.value([]),
      _ => throw UnimplementedError(),
    };
  }

  Future<Iterable<Trigger>> _processDirectory(Directory directory) async {
    final triggers = <TriggerDirectory>[
      TriggerDartVersionManagerDvmDirectory(directory),
      TriggerFlutterProjectAndroidDirectory(directory),
      TriggerFlutterProjectIosDirectory(directory),
      TriggerFlutterVersionManagerFvmDirectory(directory),
      TriggerIntlUtilsIntlDirectory(directory),
      TriggerJetBrainsIdeIdeaDirectory(directory),
      TriggerVitePressDirectory(directory),
      TriggerXcodeXcodeprojDirectory(directory),
      TriggerXcodeXcworkspaceDirectory(directory),
    ];

    final futures = triggers.map((trigger) => trigger.evaluate());

    final results = await Future.wait(futures);

    return triggers.indexed.where((element) => results[element.$1]).map((element) => element.$2);
  }

  Future<Iterable<Trigger>> _processFile(File file) async {
    final triggers = <TriggerFile>[
      TriggerAndroidKeyStoreFile(file),
      TriggerAndroidManifestFile(file),
      TriggerFirebaseJsonFile(file),
      TriggerFirebaseRcFile(file),
      TriggerFlutterGeneratedPluginRegistrantAndroidFile(file),
      TriggerFlutterGeneratedPluginRegistrantIosFile(file),
      TriggerFlutterVersionManagerFvmrcFile(file),
      TriggerGoogleServicesInfoPlistFile(file),
      TriggerGoogleServicesJsonFile(file),
      TriggerGradleBuildFile(file),
      TriggerGradleSettingsFile(file),
      TriggerIntlUtilsL10nFile(file),
      TriggerLocalPropertiesFile(file),
      TriggerProductionEnvFile(file),
      TriggerPubspecFile(file),
      TriggerPubspecFileWithBuildRunnerDependency(file),
      TriggerPubspecFileWithFlutterDependency(file),
    ];

    final futures = triggers.map((trigger) => trigger.evaluate());

    final results = await Future.wait(futures);

    return triggers.indexed.where((element) => results[element.$1]).map((element) => element.$2);
  }
}
