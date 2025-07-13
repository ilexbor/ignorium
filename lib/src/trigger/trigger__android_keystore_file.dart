part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerAndroidKeyStoreFile extends TriggerFile {
  TriggerAndroidKeyStoreFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileExtension = path.extension(filePath).toLowerCase();

    if (fileExtension == '.jks' || fileExtension == '.keystore') {
      return true;
    }

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == '.jks' || fileName == '.keystore') {
      return true;
    }

    return false;
  }
}
