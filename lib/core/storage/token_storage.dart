import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const storage = FlutterSecureStorage();

  Future<void> setAdminAccessToken(String adminAccessToken) async{
    await storage.write(key: 'adminAccessToken', value: adminAccessToken);
  } 
  Future<void> setAdminRefreshToken(String adminRefreshToken) async{
    await storage.write(key: 'adminRefreshToken', value: adminRefreshToken);
  } 

  Future<void> setDeviceToken(String deviceToken) async{
    await storage.write(key: 'deviceToken', value: deviceToken);
  }

  Future<void> setUserToken(String userToken) async{
    await storage.write(key: 'userToken', value: userToken);
  }

  Future<String?> getAdminAccessToken() => storage.read(key: 'adminAccessToken');
  Future<String?> getAdminRefreshToken() => storage.read(key: 'adminRefreshToken');

  Future<String?> getDeviceToken() => storage.read(key: 'deviceToken');

  Future<String?> getUserToken() => storage.read(key: 'userToken');
}