part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerIntlUtilsL10nFile extends TriggerFile {
  TriggerIntlUtilsL10nFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName != 'l10n.dart') {
      return false;
    }

    final content = file.readAsStringSync();

    final hasComments = content.contains('// GENERATED CODE - DO NOT MODIFY BY HAND') && content.contains('// Generator: Flutter Intl IDE plugin');

    if (!hasComments) {
      return false;
    }

    return true;
  }
}
