part of '../gitignore/gitignore_ruleset.dart';

class AndroidKeystoreFileGitignoreRuleSet extends GitignoreRuleSet {
  const AndroidKeystoreFileGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.androidKeyStore;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.jks'),
    GitignoreRule(rule: '*.jks'),
    GitignoreRule(rule: '.keystore'),
    GitignoreRule(rule: '*.keystore'),
  ];
}
