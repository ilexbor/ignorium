import 'dart:convert';
import 'dart:io';

import 'package:ignorium/src/gitignore/gitignore_buffer.dart';
import 'package:ignorium/src/gitignore/gitignore_buffer_deserializer.dart';

class GitignoreFileReader {
  GitignoreFileReader({
    GitignoreBufferDeserializer? deserializer,
  }) : _deserializer = deserializer ?? GitignoreBufferDeserializer();

  final GitignoreBufferDeserializer _deserializer;

  Future<GitignoreBuffer?> call(File file) async {
    if (!file.existsSync()) {
      return null;
    }

    final streamOfBytes = file.openRead();

    final streamOfStrings = streamOfBytes.transform(utf8.decoder);

    final buffer = await _deserializer.call(streamOfStrings);

    return buffer;
  }
}
