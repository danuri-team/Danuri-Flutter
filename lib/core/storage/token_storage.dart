import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const storage = FlutterSecureStorage();

  Future<void> setAdminAccessToken(String adminAccessToken) async {
    await storage.write(
      key: 'adminAccessToken',
      value: adminAccessToken,
    );
  }

  Future<void> setAdminRefreshToken(String adminRefreshToken) async {
    await storage.write(
      key: 'adminRefreshToken',
      value: adminRefreshToken,
    );
  }

  Future<void> setDeviceAccessToken(String deviceAccessToken) async {
    await storage.write(
      key: 'deviceAccessToken',
      value: deviceAccessToken,
    );
  }

  Future<void> setDeviceRefreshToken(String deviceRefreshToken) async {
    await storage.write(
      key: 'deviceRefreshToken',
      value: deviceRefreshToken,
    );
  }

  Future<void> setUserAccessToken(String userAccessToken) async {
    await storage.write(
      key: 'userAccessToken',
      value: userAccessToken,
    );
  }

  Future<void> setUserRefreshToken(String userRefreshToken) async {
    await storage.write(
      key: 'userRefreshToken',
      value: userRefreshToken,
    );
  }

  Future<String?> getAdminAccessToken() =>
      storage.read(key: 'adminAccessToken');

  Future<String?> getAdminRefreshToken() =>
      storage.read(key: 'adminRefreshToken');

  Future<String?> getDeviceAccessToken() => storage.read(key: 'deviceAccessToken');

  Future<String?> getDeviceRefreshToken() => storage.read(key: 'deviceAccessToken');

  Future<String?> getUserAccessToken() => storage.read(key: 'userAccessToken');

  Future<String?> getUserRefreshToken() => storage.read(key: 'userRefreshToken');
}
