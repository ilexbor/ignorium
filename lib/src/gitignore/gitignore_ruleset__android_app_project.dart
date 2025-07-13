part of '../gitignore/gitignore_ruleset.dart';

class AndroidAppProjectGitignoreRuleSet extends GitignoreRuleSet {
  const AndroidAppProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.androidAppProject;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.cxx/'),
    GitignoreRule(rule: 'build/'),
    GitignoreRule(rule: 'captures/'),
  ];
}
