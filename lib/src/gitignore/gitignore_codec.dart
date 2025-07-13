class GitignoreCodec {
  static const autoGenerateSectionBegin = '$_prefix[BEGIN AUTO GENERATE SECTION]';
  static const autoGenerateSectionEnd = '$_prefix[END AUTO GENERATE SECTION]';

  static const _prefix = '# [ignorium] ';

  String encodePrefix(String string) {
    return '$_prefix$string';
  }

  bool containsPrefix(String string) {
    return string.startsWith(_prefix);
  }
}
