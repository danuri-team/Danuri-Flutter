import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const storage = FlutterSecureStorage();

  // Set Admin
  Future<void> setAdminToken(Map<String, dynamic> adminToken) async {
    await storage.write(
      key: 'adminAccessToken',
      value: adminToken['access_token']['token'],
    );
    await storage.write(
      key: 'adminAccessTokenExpiredAt',
      value: adminToken['access_token']['expired_at'].toString(),
    );
    await storage.write(
      key: 'adminRefreshToken',
      value: adminToken['refresh_token']['token'],
    );
    await storage.write(
      key: 'adminRefreshTokenExpiredAt',
      value: adminToken['refresh_token']['expired_at'].toString(),
    );
  }

  // Set Device
  Future<void> setDeviceToken(Map<String, dynamic> deviceToken) async {
    await storage.write(
      key: 'deviceAccessToken',
      value: deviceToken['access_token']['token'],
    );
    await storage.write(
      key: 'deviceAccessTokenExpiredAt',
      value: deviceToken['access_token']['expired_at'].toString(),
    );
    await storage.write(
      key: 'deviceRefreshToken',
      value: deviceToken['refresh_token']['token'],
    );
    await storage.write(
      key: 'deviceRefreshTokenExpiredAt',
      value: deviceToken['refresh_token']['expired_at'].toString(),
    );
  }

  // Set User
  Future<void> setUserToken(Map<String, dynamic> userToken) async {
    await storage.write(
      key: 'userAccessToken',
      value: userToken['access_token']['token'],
    );
    await storage.write(
      key: 'userAccessTokenExpiredAt',
      value: userToken['access_token']['expired_at'].toString(),
    );
    await storage.write(
      key: 'userRefreshToken',
      value: userToken['refresh_token']['token'],
    );
    await storage.write(
      key: 'userRefreshTokenExpiredAt',
      value: userToken['refresh_token']['expired_at'].toString(),
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
