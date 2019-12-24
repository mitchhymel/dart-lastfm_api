import 'dart:convert';

class LastFmHelpers {

  /**
   * Helper method to print a map as json formatted with tabs
   */
  static String getPrettyStringFromMap(Map map) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    return encoder.convert(map);
  }

  static void addValueIfNotNull(Map map, String key, String value) {
    if (value != null) {
      map.putIfAbsent(key, () => value);
    }
  }

  static bool parseBoolFromString(String val) {
    return int.parse(val) == 1;
  }
}