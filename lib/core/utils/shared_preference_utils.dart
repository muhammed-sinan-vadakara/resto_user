import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static Future<bool> getDark() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("is_dark") ?? false;
  }

  static Future<void> setTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("is_dark", true);
  }
}
