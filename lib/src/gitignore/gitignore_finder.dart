import 'dart:io';

import 'package:path/path.dart' as path;

class GitignoreFinder {
  File? findNearestGitignoreUpwards(Directory directory) {
    var loopDirectory = directory;

    while (true) {
      final directoryPath = path.normalize(loopDirectory.absolute.path);

      final gitignoreFilePath = path.join(directoryPath, '.gitignore');
      final gitignoreFile = File(gitignoreFilePath);

      if (gitignoreFile.existsSync()) {
        return gitignoreFile;
      }

      final parentDirectory = loopDirectory.parent;
      final parentDirectoryPath = path.normalize(parentDirectory.absolute.path);

      if (path.equals(directoryPath, parentDirectoryPath)) {
        break;
      }

      loopDirectory = parentDirectory;
    }

    return null;
  }
}
