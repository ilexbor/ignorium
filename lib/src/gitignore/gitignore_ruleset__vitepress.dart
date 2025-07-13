part of '../gitignore/gitignore_ruleset.dart';

class VitePressGitignoreRuleSet extends GitignoreRuleSet {
  const VitePressGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.vitePress;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.vitepress/cache/'),
    GitignoreRule(rule: '.vitepress/dist/'),
  ];
}
