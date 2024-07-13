import 'package:account_manager/src/CloudStorageProvider.dart';

/// This class is responsible for creating AWS S3 provider
class AwsS3Provider implements CloudStorageProvider {
  final String accessKey;
  final String secretKey;
  final String region;
  final String bucketID;

  AwsS3Provider(
      {required this.accessKey,
      required this.secretKey,
      required this.region,
      required this.bucketID});
      
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
