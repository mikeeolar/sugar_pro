/// Both DebugEnv and ReleaseEnv must implement all these values
abstract interface class EnvFields {
  abstract final String appName;
  abstract final String appDebug;
  abstract final String appId;
  abstract final String appKey;
  abstract final String api;
  abstract final String googleMapKey;
  abstract final String androidAppKey;
  abstract final String androidAccessKey;
  abstract final String iosAppKey;
  abstract final String iosAccessKey;
  abstract final String mapApi;
  abstract final String encryptionAppKey;
  abstract final String iv;
}
