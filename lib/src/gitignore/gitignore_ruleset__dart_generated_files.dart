part of '../gitignore/gitignore_ruleset.dart';

class DartGeneratedFilesGitignoreRuleSet extends GitignoreRuleSet {
  const DartGeneratedFilesGitignoreRuleSet() : super(_section, _rules);

  static const GitignoreSection _section = GitignoreSection.dartGeneratedFiles;

  static const _rules = <GitignoreRule>[
    GitignoreRule(rule: '*.freezed.dart'),
    GitignoreRule(rule: '*.g.dart'),
    GitignoreRule(rule: '*.gen.dart'),
    GitignoreRule(rule: '*.generated.dart'),
    GitignoreRule(rule: '*.gr.dart'),
  ];
}