part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerJetBrainsIdeIdeaDirectory extends TriggerDirectory {
  TriggerJetBrainsIdeIdeaDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = directory.absolute.path;

    final directoryName = path.basename(directoryPath).toLowerCase();

    final isTargetFile = (directoryName == '.idea');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
