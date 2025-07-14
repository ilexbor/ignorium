import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:ignorium/src/cli/cli_command__gen.dart';
import 'package:ignorium/src/cli/cli_command_runner.dart';
import 'package:stack_trace/stack_trace.dart';

void main(List<String> args) {
  Chain.capture(
    () => unawaited(
      _runApp(args),
    ),
    onError: _handleError,
  );
}

Future<void> _runApp(List<String> args) async {
  final cliCommandRunner = CliCommandRunner()..addCommand(GenCliCommand());
  await cliCommandRunner.run(args);
}

void _handleError(Object error, Chain chain) {
  stderr.writeln();

  switch (error) {
    case UsageException():
      stderr.writeln('$error');
    default:
      stderr.writeln(error);
      stderr.writeln('StackTrace: ${chain.terse}');
  }

  exit(1);
}
