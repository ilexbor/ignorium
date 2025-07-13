part of '../gitignore/gitignore_ruleset.dart';

class GradleForJetBrainsIdeFilesGitignoreRuleSet extends GitignoreRuleSet {
  const GradleForJetBrainsIdeFilesGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.gradleJetBrainsIdeFiles;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.idea/**/gradle.xml'),
  ];
}
