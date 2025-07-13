part of '../gitignore/gitignore_ruleset.dart';

class MacOsGitignoreRuleSet extends GitignoreRuleSet {
  const MacOsGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.macOS;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.DS_Store'),
    GitignoreRule(rule: 'Icon?'),
  ];
}
