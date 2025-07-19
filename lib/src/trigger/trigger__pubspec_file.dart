part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerPubspecFile extends TriggerFile {
  TriggerPubspecFile(super.file);

  @override
  Future<bool> evaluate() async {
    final pubspecHelper = PubspecHelper();

    final isPubspecFile = pubspecHelper.isPubspecFile(file);

    return isPubspecFile;
  }
}
