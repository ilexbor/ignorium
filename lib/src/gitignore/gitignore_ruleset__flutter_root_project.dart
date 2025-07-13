part of '../gitignore/gitignore_ruleset.dart';

class FlutterRootProjectGitignoreRuleSet extends GitignoreRuleSet {
  const FlutterRootProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.flutterRootProject;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.flutter-plugins'),
    GitignoreRule(rule: '.flutter-plugins-dependencies'),
    GitignoreRule(rule: '.packages'),
    GitignoreRule(rule: 'build/'),
  ];
}
