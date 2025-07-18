import 'dart:io';

import 'package:path/path.dart' as path;

class GitignoreHelper {
  Directory? findNearestGitignore(Directory directory) {
    var currentDir = directory;
    
    while (currentDir.absolute.path != currentDir.parent.absolute.path) {
      final gitignorePath = path.join(currentDir.path, '.gitignore');
      final gitignoreFile = File(gitignorePath);
      if (gitignoreFile.existsSync()) {
        return currentDir;
      }
      currentDir = currentDir.parent;
    }
    
    return null;
  }
}