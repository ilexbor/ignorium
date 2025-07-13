part of '../gitignore/gitignore_ruleset.dart';

class GoogleServicesGitignoreRuleSet extends GitignoreRuleSet {
  const GoogleServicesGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.googleServices;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: 'google-services.json'),
    GitignoreRule(rule: 'GoogleService-Info.plist'),
  ];
}
