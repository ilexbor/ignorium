import 'dart:io';

import 'package:ignorium/src/gitignore/gitignore_helper.dart';
import 'package:ignorium/src/helper/pubspec_helper.dart';
import 'package:ignorium/src/trigger/trigger.dart';

class GitignoreDirectoryFinder {
  Future<Map<String, List<Trigger>>> call(Iterable<Trigger> triggers) async {
    final map = <String, List<Trigger>>{};

    for (final trigger in triggers) {
      final directory = _findDirectory(trigger);
      map.putIfAbsent(directory.absolute.path, () => []).add(trigger);
    }

    return map;
  }

  Directory _findDirectory(Trigger trigger) {
    return switch (trigger) {
      TriggerAndroidKeyStoreFile() => trigger.file.parent,
      // TODO(ilexbor): Consider that AndroidManifest.xml file can also be located in android/ directory instead of android/app/ if this is an Android library for Flutter Plugin
      TriggerAndroidManifestFile() => trigger.file.parent.parent.parent,
      TriggerCocoaPodsLockFile() => trigger.file.parent,
      TriggerCocoaPodsPodFile() => trigger.file.parent,
      TriggerDartGeneratedFile() => () {
          final pubspecHelper = PubspecHelper();
          final gitignoreHelper = GitignoreHelper();

          final pubspecDirectory = pubspecHelper.findNearestPubspec(trigger.file.parent);
          if (pubspecDirectory != null) {
            return pubspecDirectory;
          }

          final gitignoreDirectory = gitignoreHelper.findNearestGitignore(trigger.file.parent);
          if (gitignoreDirectory != null) {
            return gitignoreDirectory;
          }

          return trigger.file.parent;
        }.call(),
      TriggerDartVersionManagerDvmDirectory() => trigger.directory.parent,
      TriggerFirebaseJsonFile() => trigger.file.parent,
      TriggerFirebaseRcFile() => trigger.file.parent,
      TriggerFlutterGeneratedPluginRegistrantAndroidFile() => trigger.file.parent.parent.parent.parent.parent.parent.parent,
      TriggerFlutterGeneratedPluginRegistrantIosFile() => trigger.file.parent.parent,
      TriggerFlutterProjectAndroidDirectory() => trigger.directory,
      TriggerFlutterProjectIosDirectory() => trigger.directory,
      TriggerFlutterVersionManagerFvmDirectory() => trigger.directory.parent,
      TriggerFlutterVersionManagerFvmrcFile() => trigger.file.parent,
      TriggerGoogleServicesInfoPlistFile() => trigger.file.parent.parent,
      TriggerGoogleServicesJsonFile() => trigger.file.parent.parent,
      TriggerGradleBuildFile() => trigger.file.parent,
      TriggerGradleSettingsFile() => trigger.file.parent,
      TriggerIntlUtilsIntlDirectory() => trigger.directory.parent,
      TriggerIntlUtilsL10nFile() => trigger.file.parent,
      TriggerJetBrainsIdeIdeaDirectory() => trigger.directory.parent,
      TriggerLocalPropertiesFile() => trigger.file.parent,
      TriggerProductionEnvFile() => trigger.file.parent,
      TriggerPubspecFile() => trigger.file.parent,
      TriggerPubspecFileWithBuildRunnerDependency() => trigger.file.parent,
      TriggerPubspecFileWithFlutterDependency() => trigger.file.parent,
      TriggerVitePressDirectory() => trigger.directory.parent,
      TriggerXcodeXcodeprojDirectory() => trigger.directory.parent,
      TriggerXcodeXcworkspaceDirectory() => trigger.directory.parent,
    };
  }
}
