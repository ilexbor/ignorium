part of '../gitignore/gitignore_ruleset.dart';

class CocoaPodsGitignoreRuleSet extends GitignoreRuleSet {
  const CocoaPodsGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.cocoapods;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: 'Pods/'),
  ];
}
