part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerPubspecFile extends TriggerFile {
  TriggerPubspecFile(super.file);

  @override
  bool evaluate() {
    final pubspecHelper = PubspecHelper();

    final isPubspecFile = pubspecHelper.isPubspecFile(file);

    if (!isPubspecFile) {
      return false;
    }

    return true;
  }
}
