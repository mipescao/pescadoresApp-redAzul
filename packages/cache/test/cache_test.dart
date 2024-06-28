// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class AuthSecureStorage {
//   static const String authTokenKey = 'authToken';

//   static final FlutterSecureStorage _storage = FlutterSecureStorage();

//   static Future<void> saveAuthToken(String token) async {
//     await _storage.write(key: authTokenKey, value: token);
//   }

//   static Future<String?> getAuthToken() async {
//     return await _storage.read(key: authTokenKey);
//   }

//   static Future<void> clearAuthToken() async {
//     await _storage.delete(key: authTokenKey);
//   }
// }