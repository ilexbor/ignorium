import 'package:args/command_runner.dart';

class CliCommandRunner extends CommandRunner<void> {
  CliCommandRunner()
      : super(
          'ignorium',
          // TODO(ilexbor): add description
          '''ignorium description''',
        );
}
