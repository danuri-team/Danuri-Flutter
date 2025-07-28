import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const storage = FlutterSecureStorage();

  Future<void> setToken(Map<String, dynamic> token, String tokenType) async{
    await storage.write(
      key: '${tokenType}AccessToken',
      value: token['access_token']['token'],
    );
    await storage.write(
      key: '${tokenType}AccessTokenExpiredAt',
      value: token['access_token']['expired_at'].toString(),
    );
    await storage.write(
      key: '${tokenType}RefreshToken',
      value: token['refresh_token']['token'],
    );
    await storage.write(
      key: '${tokenType}RefreshTokenExpiredAt',
      value: token['refresh_token']['expired_at'].toString(),
    );
  }

  // Get Admin
  Future<String?> getAdminAccessToken() =>
      storage.read(key: 'adminAccessToken');

  Future<String?> getAdminAccessTokenExpiredAt() =>
      storage.read(key: 'adminAccessTokenExpiredAt');

  Future<String?> getAdminRefreshToken() =>
      storage.read(key: 'adminRefreshToken');

  Future<String?> getAdminRefreshTokenExpiredAt() =>
      storage.read(key: 'adminRefreshTokenExpiredAt');

  // Get Device
  Future<String?> getDeviceAccessToken() =>
      storage.read(key: 'deviceAccessToken');

  Future<String?> getDeviceAccessTokenExpiredAt() =>
      storage.read(key: 'deviceAccessTokenExpiredAt');

  Future<String?> getDeviceRefreshToken() =>
      storage.read(key: 'deviceRefreshToken');

  Future<String?> getDeviceRefreshTokenExpiredAt() =>
      storage.read(key: 'deviceRefreshTokenExpiredAt');

  // Get User
  Future<String?> getUserAccessToken() => storage.read(key: 'userAccessToken');

  Future<String?> getUserAccessTokenExpiredAt() =>
      storage.read(key: 'userAccessTokenExpiredAt');

  Future<String?> getUserRefreshToken() =>
      storage.read(key: 'userRefreshToken');

  Future<String?> getUserRefreshTokenExpiredAt() =>
      storage.read(key: 'userRefreshTokenExpiredAt');
}
