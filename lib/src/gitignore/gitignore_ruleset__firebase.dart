part of '../gitignore/gitignore_ruleset.dart';

class FirebaseGitignoreRuleSet extends GitignoreRuleSet {
  const FirebaseGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.firebase;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '.firebase/'),
    GitignoreRule(rule: 'firebase-debug.*.log'),
    GitignoreRule(rule: 'firebase-debug.log'),
  ];
}
