part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerJetBrainsIdeIdeaDirectory extends TriggerDirectory {
  TriggerJetBrainsIdeIdeaDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = path.normalize(directory.absolute.path);

    final directoryName = path.basename(directoryPath).toLowerCase();

    if (directoryName == '.idea') {
      return true;
    }

    return false;
  }
}
