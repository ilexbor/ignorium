part of '../gitignore/gitignore_ruleset.dart';

class DartVersionManagerGitignoreRuleSet extends GitignoreRuleSet {
  const DartVersionManagerGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.dartVersionManager;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.dvm/dart_sdk'),
  ];
}
