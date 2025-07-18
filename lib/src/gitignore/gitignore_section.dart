enum GitignoreSection {
  androidAppProject('Android app project'),
  androidKeyStore('Android KeyStore'),
  cocoapods('CocoaPods'),
  dartGeneratedFiles('Dart generated files'),
  dartProject('Dart project'),
  dartVersionManager('Dart Version Manager'),
  firebase('Firebase'),
  flutterRootProject('Flutter root project'),
  flutterAndroidAppProject('Flutter Android app project'),
  flutterIosAppProject('Flutter iOS app project'),
  flutterVersionManager('Flutter Version Manager'),
  googleServices('Google Services'),
  gradleJetBrainsIdeFiles('Gradle JetBrains IDE files'),
  gradleModuleProject('Gradle module project'),
  gradleRootProject('Gradle root project'),
  jetBrainsIde('JetBrains IDE'),
  macOS('macOS'),
  userSpecificFiles('User specific files'),
  visualStudioCodeIde('VisualStudio Code'),
  vitePress('VitePress'),
  xcode('Xcode');

  const GitignoreSection(this.value);

  final String value;

  @override
  String toString() {
    return value;
  }
}
