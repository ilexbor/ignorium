part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterGeneratedPluginRegistrantIosFile extends TriggerFile {
  TriggerFlutterGeneratedPluginRegistrantIosFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path).toLowerCase();

    final suffixH = path.normalize('/ios/Runner/GeneratedPluginRegistrant.h').toLowerCase();
    final suffixM = path.normalize('/ios/Runner/GeneratedPluginRegistrant.m').toLowerCase();

    if (filePath.endsWith(suffixH) || filePath.endsWith(suffixM)) {
      return true;
    }

    return false;
  }
}
