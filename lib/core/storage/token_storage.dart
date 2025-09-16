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

  // Get Admin
  Future<String?> getAdminAccessToken() =>
      storage.read(key: '${TokenType.admin}AccessToken');

  Future<String?> getAdminAccessTokenExpiredAt() =>
      storage.read(key: '${TokenType.admin}AccessTokenExpiredAt');

  Future<String?> getAdminRefreshToken() =>
      storage.read(key: '${TokenType.admin}RefreshToken');

  Future<String?> getAdminRefreshTokenExpiredAt() =>
      storage.read(key: '${TokenType.admin}RefreshTokenExpiredAt');

  // Get Device
  Future<String?> getDeviceAccessToken() =>
      storage.read(key: '${TokenType.device}AccessToken');

  Future<String?> getDeviceAccessTokenExpiredAt() =>
      storage.read(key: '${TokenType.device}AccessTokenExpiredAt');

  Future<String?> getDeviceRefreshToken() =>
      storage.read(key: '${TokenType.device}RefreshToken');

  Future<String?> getDeviceRefreshTokenExpiredAt() =>
      storage.read(key: '${TokenType.device}RefreshTokenExpiredAt');

  // Get User
  Future<String?> getUserAccessToken() => storage.read(key: '${TokenType.user}AccessToken');

  Future<String?> getUserAccessTokenExpiredAt() =>
      storage.read(key: '${TokenType.user}AccessTokenExpiredAt');

  Future<String?> getUserRefreshToken() =>
      storage.read(key: '${TokenType.user}RefreshToken');

  Future<String?> getUserRefreshTokenExpiredAt() =>
      storage.read(key: '${TokenType.user}RefreshTokenExpiredAt');
}