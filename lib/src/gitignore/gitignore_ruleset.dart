import 'dart:collection';

import 'package:ignorium/src/gitignore/gitignore_rule.dart';
import 'package:ignorium/src/gitignore/gitignore_section.dart';

part 'gitignore_ruleset__android_app_project.dart';
part 'gitignore_ruleset__android_keystore_file.dart';
part 'gitignore_ruleset__cocoapods.dart';
part 'gitignore_ruleset__dart_project.dart';
part 'gitignore_ruleset__dart_version_manager.dart';
part 'gitignore_ruleset__firebase.dart';
part 'gitignore_ruleset__flutter_android_app_project.dart';
part 'gitignore_ruleset__flutter_ios_app_project.dart';
part 'gitignore_ruleset__flutter_root_project.dart';
part 'gitignore_ruleset__flutter_version_manager.dart';
part 'gitignore_ruleset__google_services.dart';
part 'gitignore_ruleset__gradle_jet_brains_ide_files.dart';
part 'gitignore_ruleset__gradle_module_project.dart';
part 'gitignore_ruleset__gradle_root_project.dart';
part 'gitignore_ruleset__jet_brains_ide.dart';
part 'gitignore_ruleset__local_properties.dart';
part 'gitignore_ruleset__macos.dart';
part 'gitignore_ruleset__visual_studio_code.dart';
part 'gitignore_ruleset__vitepress.dart';
part 'gitignore_ruleset__xcode_project.dart';
part 'gitignore_ruleset__xcode_workspace.dart';

sealed class GitignoreRuleSet {
  const GitignoreRuleSet(this.section, this._ruleList);

  final GitignoreSection section;
  final List<GitignoreRule> _ruleList;

  UnmodifiableListView<GitignoreRule> get rules => UnmodifiableListView(_ruleList);
}
