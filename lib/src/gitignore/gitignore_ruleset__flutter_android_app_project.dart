part of '../gitignore/gitignore_ruleset.dart';

class FlutterAndroidAppProjectGitignoreRuleSet extends GitignoreRuleSet {
  const FlutterAndroidAppProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.flutterAndroidAppProject;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.cxx/'),
    GitignoreRule(rule: '.symlinks/'),
    GitignoreRule(rule: 'GeneratedPluginRegistrant.java'),
  ];
}
