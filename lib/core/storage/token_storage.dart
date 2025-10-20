import 'package:danuri_flutter/data/models/enum/token_type.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const storage = FlutterSecureStorage();

  Future<void> setToken(Map<String, dynamic> token, TokenType tokenType) async {
    await storage.write(
      key: '${tokenType}AccessToken',
      value: token['access_token']['token'],
    );
    await storage.write(
      key: '${tokenType}AccessTokenExpiredAt',
      value: token['access_token']['expired_at'].toString(),
    );
    if (token['refresh_token'] != null) {
      await storage.write(
        key: '${tokenType}RefreshToken',
        value: token['refresh_token']['token'],
      );
      await storage.write(
        key: '${tokenType}RefreshTokenExpiredAt',
        value: token['refresh_token']['expired_at'].toString(),
      );
    }
  }

  // Get Device
  Future<String?> getDeviceAccessToken() => storage.read(key: '${TokenType.DEVICE}AccessToken');

  Future<String?> getDeviceAccessTokenExpiredAt() =>
      storage.read(key: '${TokenType.DEVICE}AccessTokenExpiredAt');

  Future<String?> getDeviceRefreshToken() =>
      storage.read(key: '${TokenType.DEVICE}RefreshToken');

  Future<String?> getDeviceRefreshTokenExpiredAt() =>
      storage.read(key: '${TokenType.DEVICE}RefreshTokenExpiredAt');

  // Get User
  Future<String?> getUserAccessToken() => storage.read(key: '${TokenType.USER}AccessToken');

  Future<String?> getUserAccessTokenExpiredAt() =>
      storage.read(key: '${TokenType.USER}AccessTokenExpiredAt');

  Future<String?> getUserRefreshToken() =>
      storage.read(key: '${TokenType.USER}RefreshToken');

  Future<String?> getUserRefreshTokenExpiredAt() =>
      storage.read(key: '${TokenType.USER}RefreshTokenExpiredAt');

  Future<void> resetStorage() async {
    await storage.deleteAll();
  }
}
