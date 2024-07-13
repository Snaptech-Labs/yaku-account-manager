import 'package:account_manager/src/CloudStorageProvider.dart';

/// This class is responsible for creating one drive provider.
class OneDriveProvider implements CloudStorageProvider {
  final String clientID;
  final String clientSecret;
  final String tenantID;

  OneDriveProvider(
      {required this.clientID,
      required this.clientSecret,
      required this.tenantID});
      
  @override
  Future<void> authenticate() {
    // TODO: implement authenticate
    throw UnimplementedError();
  }

  @override
  Future<List<String>> listFiles() {
    // TODO: implement listFiles
    throw UnimplementedError();
  }     
}
