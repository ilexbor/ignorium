import 'dart:io';

import 'package:collection/collection.dart';
import 'package:ignorium/src/helper/pubspec_helper.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

part 'trigger__android_keystore_file.dart';
part 'trigger__android_manifest_file.dart';
part 'trigger__cocoapods_lock_file.dart';
part 'trigger__cocoapods_pod_file.dart';
part 'trigger__dart_version_manager_dvm_directory.dart';
part 'trigger__firebase_json_file.dart';
part 'trigger__firebase_rc_file.dart';
part 'trigger__flutter_generated_plugin_registrant_android_file.dart';
part 'trigger__flutter_generated_plugin_registrant_ios_file.dart';
part 'trigger__flutter_project_android_directory.dart';
part 'trigger__flutter_project_ios_directory.dart';
part 'trigger__flutter_version_manager_fvm_directory.dart';
part 'trigger__flutter_version_manager_fvmrc_file.dart';
part 'trigger__google_services_info_plist_file.dart';
part 'trigger__google_services_json_file.dart';
part 'trigger__gradle_build_file.dart';
part 'trigger__gradle_settings_file.dart';
part 'trigger__intl_utils_intl_directory.dart';
part 'trigger__intl_utils_l10n_file.dart';
part 'trigger__jetbrains_ide_idea_directory.dart';
part 'trigger__local_properties_file.dart';
part 'trigger__production_env_file.dart';
part 'trigger__pubspec_file.dart';
part 'trigger__pubspec_file_with_build_runner_dependency.dart';
part 'trigger__pubspec_file_with_flutter_dependency.dart';
part 'trigger__vitepress_directory.dart';
part 'trigger__xcode_xcodeproj_directory.dart';
part 'trigger__xcode_xcworkspace_directory.dart';

sealed class Trigger {
  bool evaluate();
}

sealed class TriggerDirectory extends Trigger {
  TriggerDirectory(this.directory);

  final Directory directory;
}

sealed class TriggerFile extends Trigger {
  TriggerFile(this.file);

  final File file;
}
