//ignore: unused_import
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CacheStorage {
  late SharedPreferences? _sharedPreferences;

  CacheStorage() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<bool> saveIntData(String key, int value) async {
    var result = await _sharedPreferences!.setInt(key, value);
    return result;
  }

  Future<bool> saveDoubleData(String key, double value) async {
    var result = await _sharedPreferences!.setDouble(key, value);
    return result;
  }

  Future<bool> saveBoolData(String key, bool value) async {
    var result = await _sharedPreferences!.setBool(key, value);
    return result;
  }

  Future<bool> saveStringListData(String key, List<String> value) async {
    var result = await _sharedPreferences!.setStringList(key, value);
    return result;
  }

  Future<bool> saveStringData(String key, String value) async {
    var result = await _sharedPreferences!.setString(key, value);
    return result;
  }

  getBoolData(String key) {
    try {
      return _sharedPreferences!.getBool(key);
    } catch (err) {
      return null;
    }
  }

  getStringData(String key) {
    try {
      return _sharedPreferences!.getString(key);
    } catch (err) {
      return null;
    }
  }

  getIntData(String key) {
    try {
      return _sharedPreferences!.getInt(key);
    } catch (err) {
      return null;
    }
  }

  getDoubleData(String key) {
    try {
      return _sharedPreferences!.getDouble(key);
    } catch (err) {
      return null;
    }
  }

  getStringList(String key) {
    try {
      return _sharedPreferences!.getStringList(key);
    } catch (err) {
      return null;
    }
  }
}
