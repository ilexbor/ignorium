part of '../gitignore/gitignore_ruleset.dart';

class XcodeProjectGitignoreRuleSet extends GitignoreRuleSet {
  const XcodeProjectGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.xcode;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '**/dgph'),
    GitignoreRule(rule: '*.mode1v3'),
    GitignoreRule(rule: '!default.mode1v3'),
    GitignoreRule(rule: '*.mode2v3'),
    GitignoreRule(rule: '!default.mode2v3'),
    GitignoreRule(rule: '*.moved-aside'),
    GitignoreRule(rule: '*.pbxuser'),
    GitignoreRule(rule: '!default.pbxuser'),
    GitignoreRule(rule: '*.perspectivev3'),
    GitignoreRule(rule: '!default.perspectivev3'),
    GitignoreRule(rule: 'Build/'),
    GitignoreRule(rule: 'DerivedData/'),
    GitignoreRule(rule: 'xcuserdata/'),
    GitignoreRule(rule: 'ServiceDefinitions.json'),
  ];
}
