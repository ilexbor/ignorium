// ignore_for_file: document_ignores

import 'dart:io';

import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

class PubspecHelper {
  bool isPubspecFile(File file) {
    try {
      final filePath = file.absolute.path;

      final fileName = path.basename(filePath).toLowerCase();

      return (fileName == 'pubspec.yaml');
    } on Exception {
      return false;
    }
    // ignore: avoid_catching_errors
    on Error {
      return false;
    }
  }

  File? getPubspecFileInDirectory({required Directory directory, bool recursive = false}) {
    try {
      final fileSystemEntities = directory.listSync(
        recursive: recursive,
        followLinks: false,
      );

      final pubspecFile = fileSystemEntities.firstWhereOrNull((fileSystemEntity) {
        if (fileSystemEntity is! File) {
          return false;
        }

        final file = fileSystemEntity;

        return isPubspecFile(file);
      }) as File?;

      return pubspecFile;
    } on Exception {
      return null;
    }
    // ignore: avoid_catching_errors
    on Error {
      return null;
    }
  }

  T? getDependencyFromPubspecFile<T>(File file, String dependencyName) {
    try {
      final fileContent = file.readAsStringSync();

      final yamlMap = loadYaml(fileContent) as YamlMap;

      final dependencies = yamlMap['dependencies'] as YamlMap?;

      if (dependencies == null) {
        return null;
      }

      final dependency = dependencies[dependencyName] as T?;

      return dependency;
    } on Exception {
      return null;
    }
    // ignore: avoid_catching_errors
    on Error {
      return null;
    }
  }

  T? getDevDependencyFromPubspecFile<T>(File file, String dependencyName) {
    try {
      final fileContent = file.readAsStringSync();

      final yamlMap = loadYaml(fileContent) as YamlMap;

      final dependencies = yamlMap['dev_dependencies'] as YamlMap?;

      if (dependencies == null) {
        return null;
      }

      final dependency = dependencies[dependencyName] as T?;

      return dependency;
    } on Exception {
      return null;
    }
    // ignore: avoid_catching_errors
    on Error {
      return null;
    }
  }

  bool hasFlutterDependencyInPubspecFile(File file) {
    try {
      final flutterDependency = getDependencyFromPubspecFile<YamlMap>(file, 'flutter');

      if (flutterDependency == null) {
        return false;
      }

      final sdk = flutterDependency['sdk'];

      return (sdk == 'flutter');
    } on Exception {
      return false;
    }
    // ignore: avoid_catching_errors
    on Error {
      return false;
    }
  }

  Directory? findNearestPubspec(Directory directory) {
    var currentDir = directory;
    
    while (currentDir.absolute.path != currentDir.parent.absolute.path) {
      final pubspecPath = path.join(currentDir.path, 'pubspec.yaml');
      final pubspecFile = File(pubspecPath);
      if (pubspecFile.existsSync()) {
        return currentDir;
      }
      currentDir = currentDir.parent;
    }
    
    return null;
  }
}
