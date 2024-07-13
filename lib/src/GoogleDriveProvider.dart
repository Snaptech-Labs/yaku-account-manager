import 'package:account_manager/src/CloudStorageProvider.dart';

/// This class is responsible for creating Google Drive provider
class GoogleDriveProvider implements CloudStorageProvider {
  final String clientID;
  final String clientSecret;

  GoogleDriveProvider({required this.clientID, required this.clientSecret});
  
  @override
  Future<void> authenticate() async {
    // TODO: implement authenticate
    throw UnimplementedError();
  }
  
  @override
  Future<List<String>> listFiles() async {
    // TODO: implement listFiles
    throw UnimplementedError();
  }  
}
