import 'package:args/command_runner.dart';

class CliCommandRunner extends CommandRunner<void> {
  CliCommandRunner()
      : super(
          'ignorium',
          '''

Ignorium is a CLI tool for automatic .gitignore generation based on detected files and their contents.
Ignorium intelligently scans your project directory and generates appropriate .gitignore files based on detected frameworks, build tools, IDEs, and other project characteristics.''',
        );
}
