import 'package:envied/envied.dart';
import 'package:sugar_pros/core/constants/env/app_env.dart';
import 'package:sugar_pros/core/constants/env/env_fields.dart';

part 'dev_env.g.dart';

@Envied(name: 'Env', path: 'env/dev.env')
final class DevEnv implements AppEnv, EnvFields {
  DevEnv();

  @override
  @EnviedField(varName: 'APP_NAME')
  final String appName = _Env.appName;

  @override
  @EnviedField(varName: 'APP_DEBUG')
  final String appDebug = _Env.appDebug;

  @override
  @EnviedField(varName: 'APP_ID')
  final String appId = _Env.appId;

  @override
  @EnviedField(varName: 'APP_KEY')
  final String appKey = _Env.appKey;

  @override
  @EnviedField(varName: 'API')
  final String api = _Env.api;

  @override
  @EnviedField(varName: 'ENCRYPTION_APP_KEY', obfuscate: true)
  final String encryptionAppKey = _Env.encryptionAppKey;

  @override
  @EnviedField(varName: 'IV', obfuscate: true)
  final String iv = _Env.iv;

  @override
  @EnviedField(varName: 'Android_AccessKey', obfuscate: true)
  final String androidAccessKey = _Env.androidAccessKey;

  @override
  @EnviedField(varName: 'Android_AppKey', obfuscate: true)
  final String androidAppKey = _Env.androidAppKey;

  @override
  @EnviedField(varName: 'GoogleMapKey', obfuscate: true)
  final String googleMapKey = _Env.googleMapKey;

  @override
  @EnviedField(varName: 'IOS_AppKey', obfuscate: true)
  final String iosAccessKey = _Env.iosAccessKey;

  @override
  @EnviedField(varName: 'IOS_AccessKey', obfuscate: true)
  final String iosAppKey = _Env.iosAppKey;

  @override
  @EnviedField(varName: 'MAP_API')
  final String mapApi = _Env.mapApi;
}
