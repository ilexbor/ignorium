part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerIntlUtilsIntlDirectory extends TriggerDirectory {
  TriggerIntlUtilsIntlDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = directory.absolute.path;

    final directoryName = path.basename(directoryPath).toLowerCase();

    if (directoryName != 'intl') {
      return false;
    }

    final fileSystemEntities = directory.listSync(followLinks: false);

    final generatedFile = fileSystemEntities.firstWhereOrNull((fileSystemEntity) {
      if (fileSystemEntity is! File) {
        return false;
      }

      final file = fileSystemEntity;

      final filePath = file.absolute.path;

      final fileName = path.basename(filePath).toLowerCase();

      if (!fileName.startsWith('messages_') || !fileName.endsWith('.dart')) {
        return false;
      }

      final content = file.readAsStringSync();

      if (!content.contains('This is code generated via package:intl/generate_localized.dart')) {
        return false;
      }

      return true;
    });

    final hasGeneratedFile = (generatedFile != null);

    if (!hasGeneratedFile) {
      return false;
    }

    return true;
  }
}
