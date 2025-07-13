part of '../gitignore/gitignore_ruleset.dart';

class DartProjectGitignoreRuleSet extends GitignoreRuleSet {
  const DartProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.dartProject;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.dart_tool/'),
    GitignoreRule(rule: 'build/'),
    GitignoreRule(rule: 'doc/api/'),
  ];
}
