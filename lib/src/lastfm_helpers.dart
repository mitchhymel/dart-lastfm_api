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

  static bool parseBoolFromStringOrBool(Map map, String key) {
    if (map[key] is bool) {
      return map[key];
    }

    return int.parse(map[key]) == 1;
  }

  static double parseDoubleIfContainsKey(Map map, String key) {
    if (!map.containsKey(key)) {
      return -1;
    }

    if (map[key] is double) {
      return map[key];
    }

    return double.parse(map[key]);
  }

  static int parseIntIfContainsKey(Map map, String key) {
    if (!map.containsKey(key)) {
      return -1;
    }

    if (map[key] is int) {
      return map[key];
    }

    return int.parse(map[key]);
  }

  static bool parseBoolIfContainsKey(Map map, String key) {
    return parseIntIfContainsKey(map, key) == 1;
  }
}