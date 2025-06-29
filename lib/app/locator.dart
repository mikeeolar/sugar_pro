import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:sugar_pros/core/services/biometric_service.dart';
import 'package:sugar_pros/core/services/notification_service/notification_service.dart';
import 'package:sugar_pros/core/services/notification_service/notification_service_impl.dart';
import 'package:sugar_pros/core/services/secure_storage_service.dart';
import 'package:get_it/get_it.dart';
import 'package:sugar_pros/core/services/api/api_service.dart';
import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart';

import 'package:sugar_pros/core/services/device_info_service.dart';
import 'package:sugar_pros/core/services/http/http_service_impl.dart';
import 'package:sugar_pros/core/services/user_service.dart';
import 'package:sugar_pros/core/utils/exports.dart';


GetIt locator = GetIt.instance;
Future<void> setupLocator({bool test = false}) async {
  final Directory appDocDir = test ? Directory.current : await getApplicationDocumentsDirectory();
  Hive.init(appDocDir.path);

  if (!test) {
    locator.registerLazySingleton<HiveInterface>(() => Hive);
    locator.registerLazySingleton<FirebaseMessaging>(() => FirebaseMessaging.instance);
  }

  //--------------------------Services------------------------------
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<DialogService>(() => DialogService());
  locator.registerLazySingleton<SnackbarService>(() => SnackbarService());
  locator.registerLazySingleton<HttpService>(() => HttpServiceImpl());
  locator.registerLazySingleton<ApiService>(() => ApiService());
  locator.registerLazySingleton<UserService>(() => UserService());
  locator.registerLazySingleton<StorageService>(() => StorageService());
  locator.registerLazySingleton<UtilityService>(() => UtilityService());
  locator.registerLazySingleton<NotificationService>(() => NotificationServiceImpl());
  locator.registerLazySingleton<SecureStorageService>(() => SecureStorageService());
  locator.registerLazySingleton<DeviceInfoService>(() => DeviceInfoService()..initDeviceInfo());
  locator.registerLazySingleton<BiometricService>(() => BiometricService()..setBiometricData());

  //--------------------------Date Source------------------------------


  Logger.d('Initializing boxes...');
  await UserService().init();
  await StorageService().init();
  await BiometricService().setBiometricData();
}
