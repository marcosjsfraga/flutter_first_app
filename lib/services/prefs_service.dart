import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static saveKey(String key, value) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static getKey(String key) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.getString(key);
  }

  static removeKey(String key) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static Future<bool> keyHaveValue(String key) async {
    var prefs = await SharedPreferences.getInstance();
    var keyValue = prefs.getString(key);

    if (keyValue != null) {
      return true;
    }

    return false;
  }
}
