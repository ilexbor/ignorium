import 'package:args/command_runner.dart';

class CliCommandRunner extends CommandRunner<void> {
  CliCommandRunner()
      : super(
          'ignorium',
          '''

Ignorium is a CLI tool for automatic .gitignore generation based on detected technologies detected in the target directory.''',
        );
}
