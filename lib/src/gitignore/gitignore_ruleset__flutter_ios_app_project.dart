part of '../gitignore/gitignore_ruleset.dart';

class FlutterIosAppProjectGitignoreRuleSet extends GitignoreRuleSet {
  const FlutterIosAppProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.flutterIosAppProject;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.generated/'), // Automatically generated files
    GitignoreRule(rule: '.symlinks/'),
    GitignoreRule(rule: 'Flutter/ephemeral/'),
    GitignoreRule(rule: 'Flutter/flutter_assets/'),
    GitignoreRule(rule: 'Flutter/app.flx'),
    GitignoreRule(rule: 'Flutter/App.framework'),
    GitignoreRule(rule: 'Flutter/app.zip'),
    GitignoreRule(rule: 'Flutter/Flutter.framework'),
    GitignoreRule(rule: 'Flutter/Flutter.podspec'),
    GitignoreRule(rule: 'Flutter/flutter_export_environment.sh'),
    GitignoreRule(rule: 'Flutter/Generated.xcconfig'),
    GitignoreRule(rule: 'GeneratedPluginRegistrant.h'), // Automatically generated files
    GitignoreRule(rule: 'GeneratedPluginRegistrant.m'), // Automatically generated files
  ];
}
