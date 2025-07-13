part of '../gitignore/gitignore_ruleset.dart';

class GradleModuleProjectGitignoreRuleSet extends GitignoreRuleSet {
  const GradleModuleProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.gradleModuleProject;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.gradle/'),
    GitignoreRule(rule: 'build/'),
  ];
}
