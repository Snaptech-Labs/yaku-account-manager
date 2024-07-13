/// Interface all cloud storage provider implementations
abstract class CloudStorageProvider {
  Future<void> authenticate();
  Future<List<String>> listFiles();
}
