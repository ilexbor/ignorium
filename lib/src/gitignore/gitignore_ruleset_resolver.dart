import 'dart:io';

import 'package:ignorium/src/gitignore/gitignore_ruleset.dart';
import 'package:ignorium/src/iterable/iterable_extension.dart';
import 'package:ignorium/src/trigger/trigger.dart';

class GitignoreRuleSetResolver {
  Iterable<GitignoreRuleSet> call(Iterable<Trigger> triggers) {
    final ruleSets = <GitignoreRuleSet>[];

    ruleSets.addAll(_resolveRuleSetsForPlatform());

    ruleSets.addAll(_resolveRuleSetsForTriggers(triggers));

    return ruleSets;
  }

  Iterable<GitignoreRuleSet> _resolveRuleSetsForPlatform() {
    return [
      if (Platform.isMacOS) const MacOsGitignoreRuleSet(),
    ];
  }

  Iterable<GitignoreRuleSet> _resolveRuleSetsForTriggers(Iterable<Trigger> triggers) {
    final pairs = triggers.pairs((a, b) {
      if (_shouldPair(a, b)) {
        return true;
      }
      if (_shouldPair(b, a)) {
        return true;
      }
      return false;
    });

    final ruleSets = pairs.expand(
      (pair) {
        return [
          ..._resolveRuleSetsForTriggerPair(pair.$1, pair.$2),
          ..._resolveRuleSetsForTriggerPair(pair.$2, pair.$1),
        ];
      },
    ).toSet();

    for (final trigger in triggers) {
      ruleSets.addAll(_resolveRuleSetsForTrigger(trigger));
    }

    return ruleSets;
  }

  Iterable<GitignoreRuleSet> _resolveRuleSetsForTriggerPair(Trigger a, Trigger b) {
    return [
      if (a is TriggerJetBrainsIdeIdeaDirectory && (b is TriggerGradleBuildFile || b is TriggerGradleSettingsFile)) const GradleForJetBrainsIdeFilesGitignoreRuleSet(),
    ];
  }

  Iterable<GitignoreRuleSet> _resolveRuleSetsForTrigger(Trigger trigger) {
    return switch (trigger) {
      TriggerAndroidKeyStoreFile() => [
          const AndroidKeystoreFileGitignoreRuleSet(),
        ],
      TriggerAndroidManifestFile() => [
          const AndroidAppProjectGitignoreRuleSet(),
        ],
      TriggerCocoaPodsLockFile() => [
          const CocoaPodsGitignoreRuleSet(),
        ],
      TriggerCocoaPodsPodFile() => [
          const CocoaPodsGitignoreRuleSet(),
        ],
      TriggerDartGeneratedFile() => [
          const DartGeneratedFilesGitignoreRuleSet(),
        ],
      TriggerDartVersionManagerDvmDirectory() => [
          const DartVersionManagerGitignoreRuleSet(),
        ],
      TriggerFirebaseJsonFile() => [
          const FirebaseGitignoreRuleSet(),
        ],
      TriggerFirebaseRcFile() => [
          const FirebaseGitignoreRuleSet(),
        ],
      TriggerFlutterGeneratedPluginRegistrantAndroidFile() => [
          const FlutterAndroidAppProjectGitignoreRuleSet(),
        ],
      TriggerFlutterGeneratedPluginRegistrantIosFile() => [
          const FlutterIosAppProjectGitignoreRuleSet(),
        ],
      TriggerFlutterProjectAndroidDirectory() => [
          const FlutterAndroidAppProjectGitignoreRuleSet(),
        ],
      TriggerFlutterProjectIosDirectory() => [
          const FlutterIosAppProjectGitignoreRuleSet(),
        ],
      TriggerFlutterVersionManagerFvmDirectory() => [
          const FlutterVersionManagerGitignoreRuleSet(),
        ],
      TriggerFlutterVersionManagerFvmrcFile() => [
          const FlutterVersionManagerGitignoreRuleSet(),
        ],
      TriggerGoogleServicesInfoPlistFile() => [
          const GoogleServicesGitignoreRuleSet(),
        ],
      TriggerGoogleServicesJsonFile() => [
          const GoogleServicesGitignoreRuleSet(),
        ],
      TriggerGradleBuildFile() => [
          const GradleModuleProjectGitignoreRuleSet(),
        ],
      TriggerGradleSettingsFile() => [
          const GradleRootProjectGitignoreRuleSet(),
        ],
      TriggerIntlUtilsIntlDirectory() => [], // TODO(ilexbor): Add RuleSet
      TriggerIntlUtilsL10nFile() => [], // TODO(ilexbor): Add RuleSet
      TriggerJetBrainsIdeIdeaDirectory() => [
          const JetBrainsIdeGitignoreRuleSet(),
        ],
      TriggerLocalPropertiesFile() => [
          const LocalPropertiesGitignoreRuleSet(),
        ],
      TriggerProductionEnvFile() => [], // TODO(ilexbor): Add RuleSet
      TriggerPubspecFile() => [
          const DartProjectGitignoreRuleSet(),
        ],
      TriggerPubspecFileWithBuildRunnerDependency() => [], // TODO(ilexbor): Add RuleSet
      TriggerPubspecFileWithFlutterDependency() => [
          const DartProjectGitignoreRuleSet(),
          const FlutterRootProjectGitignoreRuleSet(),
        ],
      TriggerVitePressDirectory() => [
          const VitePressGitignoreRuleSet(),
        ],
      TriggerXcodeXcodeprojDirectory() => [
          const XcodeProjectGitignoreRuleSet(),
        ],
      TriggerXcodeXcworkspaceDirectory() => [
          const XcodeWorkspaceGitignoreRuleSet(),
        ],
    };
  }

  bool _shouldPair(Trigger a, Trigger b) {
    if (a is TriggerJetBrainsIdeIdeaDirectory && (b is TriggerGradleBuildFile || b is TriggerGradleSettingsFile)) {
      return true;
    }

    return false;
  }
}
