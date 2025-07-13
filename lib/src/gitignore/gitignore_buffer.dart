import 'package:ignorium/src/gitignore/gitignore_ruleset.dart';

class GitignoreBuffer {
  Iterable<GitignoreRuleSet> ruleSets = [];

  final userContent = StringBuffer();
}
