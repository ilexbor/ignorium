part of '../gitignore/gitignore_ruleset.dart';

class FlutterVersionManagerGitignoreRuleSet extends GitignoreRuleSet {
  const FlutterVersionManagerGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.flutterVersionManager;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.fvm/'),
  ];
}
