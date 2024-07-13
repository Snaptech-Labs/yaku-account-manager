import 'package:account_manager/src/ConfigKey.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Configuration {
  static final _storage = FlutterSecureStorage();

  static Future<void> saveConfiguration(Map<String, String> config) async {
    for (var entry in config.entries) {
      await _storage.write(key: entry.key, value: entry.value);
    }
  }

  static Future<Map<ConfigKey, String>> loadSecureConfiguration() async {
    final Map<ConfigKey, String> securePrefs = {};

    for (ConfigKey key in ConfigKey.values) {
      String? value = await _storage.read(key: key.toString());
      if (value != null) {
        securePrefs[key] = value;
      }
    }

    return securePrefs;
  }

  static Future<Map<String, String>> loadConfiguration() async {
    // for any configuration to pull from shared preferences
    return {};
  }
}
