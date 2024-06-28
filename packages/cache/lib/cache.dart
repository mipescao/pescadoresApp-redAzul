// import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:user_repository/src/models/user.dart';
import 'package:environmentConfiguration/config.dart';

class AuthSecureStorage {
  static const String authTokenKey = 'authToken';

  static final FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> saveAuthToken(String key, String token) async {
    await _storage.write(key: key, value: token);
  }

  static Future<String?> getAuthToken(String key)  {
    return  _storage.read(key: key);
  }

  static Future<void> clearAuthToken(String key) async {
    await _storage.delete(key: key);
  }
}