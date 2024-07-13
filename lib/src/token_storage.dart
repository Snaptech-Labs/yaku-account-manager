import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// This class responsible for saving, retreiving and deleting tokens securely
/// A FlutterSecureStorage instance should be injected while using this class.
class TokenStorage {
  final FlutterSecureStorage _storage;

  TokenStorage(this._storage);

  Future<void> setToken(String accountId, String token) async {
    await _storage.write(key: accountId, value: token);
  }

  Future<String?> getToken(String accountId) async {
    return await _storage.read(key: accountId);
  }

  Future<void> deleteToken(String accountId) async {
    await _storage.delete(key: accountId);
  }

  //TODO: Refresh token if needed
}
