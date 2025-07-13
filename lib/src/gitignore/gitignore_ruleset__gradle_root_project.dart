part of '../gitignore/gitignore_ruleset.dart';

class GradleRootProjectGitignoreRuleSet extends GitignoreRuleSet {
  const GradleRootProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.gradleRootProject;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.gradle/'),
    GitignoreRule(rule: 'build/'),
  ];
}
