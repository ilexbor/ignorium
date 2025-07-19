import 'package:ignorium/src/gitignore/gitignore_ruleset.dart';

class GitignoreBuffer {
  Iterable<GitignoreRuleSet> autoGenerateRuleSets = [];

  final userContentBeforeAutoGenerateSection = StringBuffer();
  final userContentAfterAutoGenerateSection = StringBuffer();
}
