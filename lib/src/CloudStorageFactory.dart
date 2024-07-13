import 'package:account_manager/src/CloudProviderType.dart';
import 'package:account_manager/src/CloudStorageProvider.dart';
import 'package:account_manager/src/ConfigKey.dart';
import 'package:account_manager/src/GoogleDriveProvider.dart';

/// This class is responsible for creating instances of the different cloud
/// storage providers.
/// Design Pattern : factory design pattern
class CloudStorageFactory {
  static CloudStorageProvider createProvider(
      CloudProviderType type, Map<ConfigKey, String> config) {
    switch (type) {
      case CloudProviderType.gdrive:
        return GoogleDriveProvider(
            clientID: config[ConfigKey.googleClientId]!, 
            clientSecret: config[ConfigKey.googleClientSecret]!,
          );

      // TODO: future scope integrate with these providers
      // case CloudProviderType.onedrive:
      //   return OneDriveProvider(
      //       clientID: clientID, clientSecret: clientSecret, tenantID: tenantID);

      // case CloudProviderType.awsS3:
      //   return AwsS3Provider(
      //       accessKey: accessKey,
      //       secretKey: secretKey,
      //       region: region,
      //       bucketID: bucketID);

      default:
        throw Exception('Unknown cloud provider type');
    }
  }
}
