import 'package:TUPmob/config/translations/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../../../config/translations/localization_service.dart';

class SharedPref {
  // prevent making instance
  SharedPref._();

  // get storage
  static late SharedPreferences _sharedPreferences;

  // STORING KEYS
  static const String _currentLocalKey = 'current_local';
  static const String _app_theme_key = 'app_theme';

  /// init get storage services
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static setStorage(SharedPreferences sharedPreferences) {
    _sharedPreferences = sharedPreferences;
  }

  /// set theme current App Theme
  static Future<void> setAppTheme(ThemeMode value) =>
      _sharedPreferences.setString(_app_theme_key, value.toString());

  /// get current App Theme
  static ThemeMode getAppTheme() {
    String? theme = _sharedPreferences.getString(_app_theme_key);
    if (theme == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values.firstWhere((e) => e.toString() == theme);
  }

  /// save current locale
  static Future<void> setCurrentLanguage(String languageCode) =>
      _sharedPreferences.setString(_currentLocalKey, languageCode);

  static Locale getCurrentLocal() {
    String? langCode = _sharedPreferences.getString(_currentLocalKey);
    // default language is english
    if (langCode == null) {
      return LocalizationService.defaultLanguage;
    }
    return LocalizationService.supportedLanguages[langCode]!;
  }

  /// clear all data from shared pref
  static Future<void> clear() async => await _sharedPreferences.clear();
}
