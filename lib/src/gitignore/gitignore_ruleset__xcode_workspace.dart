part of '../gitignore/gitignore_ruleset.dart';

class XcodeWorkspaceGitignoreRuleSet extends GitignoreRuleSet {
  const XcodeWorkspaceGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.xcode;

  static const _rules = <GitignoreRule>[];
}
