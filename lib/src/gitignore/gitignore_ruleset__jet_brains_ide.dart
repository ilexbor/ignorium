part of '../gitignore/gitignore_ruleset.dart';

class JetBrainsIdeGitignoreRuleSet extends GitignoreRuleSet {
  const JetBrainsIdeGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.jetBrainsIde;

  static const _rules = <GitignoreRule>[
    // User-specific files
    GitignoreRule(rule: '.idea/libraries/'),
    GitignoreRule(rule: '.idea/dictionaries'),
    GitignoreRule(rule: '.idea/tasks.xml'),
    GitignoreRule(rule: '.idea/usage.statistics.xml'),
    GitignoreRule(rule: '.idea/workspace.xml'),
    GitignoreRule(rule: '.idea/modules'),
    GitignoreRule(rule: '*.iml'),
    // Auto-generated files
    GitignoreRule(rule: '.idea/contentModel.xml'),
    // Files that may contain sensitive data
    GitignoreRule(rule: '.idea/dataSources/'),
    GitignoreRule(rule: '.idea/dataSources.ids'),
    GitignoreRule(rule: '.idea/dataSources.local.xml'),
    GitignoreRule(rule: '.idea/sqlDataSources.xml'),
    GitignoreRule(rule: '.idea/dynamic.xml'),
    GitignoreRule(rule: '.idea/uiDesigner.xml'),
    GitignoreRule(rule: '.idea/dbnavigator.xml'),
  ];
}
