import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static Future<bool> getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    log(prefs.getBool("is_dark").toString());
    return prefs.getBool("is_dark") ?? false;
  }

  static Future<void> setTheme(bool isDark) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("is_dark", isDark);
  }
}
