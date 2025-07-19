part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerDartGeneratedFile extends TriggerFile {
  TriggerDartGeneratedFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName.endsWith('.freezed.dart') ||
        fileName.endsWith('.g.dart') ||
        fileName.endsWith('.gen.dart') ||
        fileName.endsWith('.generated.dart') ||
        fileName.endsWith('.gr.dart')) {
      return true;
    }

    return false;
  }
}
