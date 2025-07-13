import 'dart:io';

import 'package:ignorium/src/gitignore/gitignore_buffer.dart';
import 'package:ignorium/src/gitignore/gitignore_buffer_serializer.dart';

class GitignoreFileWriter {
  GitignoreFileWriter({
    GitignoreBufferSerializer? serializer,
  }) : _serializer = serializer ?? GitignoreBufferSerializer();

  final GitignoreBufferSerializer _serializer;

  Future<void> call(GitignoreBuffer buffer, File file) async {
    final content = _serializer.call(buffer);

    await file.writeAsString(content);
  }
}
