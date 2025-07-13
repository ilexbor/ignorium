part of '../gitignore/gitignore_ruleset.dart';

class LocalPropertiesGitignoreRuleSet extends GitignoreRuleSet {
  const LocalPropertiesGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.userSpecificFiles;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: 'local.properties'),
  ];
}
