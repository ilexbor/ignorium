part of '../gitignore/gitignore_ruleset.dart';

class VisualStudioCodeGitignoreRuleSet extends GitignoreRuleSet {
  const VisualStudioCodeGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.visualStudioCodeIde;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.vscode/'),
  ];
}
