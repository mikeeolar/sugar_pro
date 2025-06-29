class AuthResponse {
  String? accessToken;
  String? tokenType;
  String? expiresIn;
  String? refreshToken;
  UserDetails? userDetails;
  List<SecurityQuestion>? securityQuestion;
  dynamic userPermissions;
  dynamic isDeviceTokenRegistered;
  dynamic latitude;
  dynamic longitude;

  AuthResponse(
      {this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.refreshToken,
      this.userDetails,
      this.securityQuestion,
      this.userPermissions,
      this.isDeviceTokenRegistered,
      this.latitude,
      this.longitude});

  AuthResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    tokenType = json['tokenType'];
    expiresIn = json['expiresIn'];
    refreshToken = json['refreshToken'];
    userDetails = json['userDetails'] != null
        ? UserDetails.fromJson(json['userDetails'])
        : null;
    if (json['securityQuestion'] != null) {
      securityQuestion = <SecurityQuestion>[];
      json['securityQuestion'].forEach((v) {
        securityQuestion!.add(SecurityQuestion.fromJson(v));
      });
    }
    userPermissions = json['userPermissions'];
    isDeviceTokenRegistered = json['isDeviceTokenRegistered'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['tokenType'] = tokenType;
    data['expiresIn'] = expiresIn;
    data['refreshToken'] = refreshToken;
    if (userDetails != null) {
      data['userDetails'] = userDetails!.toJson();
    }
    if (securityQuestion != null) {
      data['securityQuestion'] =
          securityQuestion!.map((v) => v.toJson()).toList();
    }
    data['userPermissions'] = userPermissions;
    data['isDeviceTokenRegistered'] = isDeviceTokenRegistered;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

class UserDetails {
  String? firstName;
  String? phoneNumber;
  String? email;
  String? userName;
  String? id;
  String? createdBy;
  String? createdByIp;
  String? createdDate;
  String? modifiedBy;
  dynamic modifiedByIp;
  dynamic modifiedDate;
  String? status;
  bool? forceChangeOfPassword;
  String? lastLoginTime;
  dynamic lastPasswordChange;
  dynamic lastPasswordReset;
  dynamic roles;
  int? customerType;
  String? accountNumbers;
  String? deviceId;
  String? deviceName;
  dynamic lastPinChange;
  int? platform;
  bool? isPinRequired;
  bool? isSecurityQuestionRequired;
  bool? forceChangeOfPIN;

  UserDetails(
      {this.firstName,
      this.phoneNumber,
      this.email,
      this.userName,
      this.id,
      this.createdBy,
      this.createdByIp,
      this.createdDate,
      this.modifiedBy,
      this.modifiedByIp,
      this.modifiedDate,
      this.status,
      this.forceChangeOfPassword,
      this.lastLoginTime,
      this.lastPasswordChange,
      this.lastPasswordReset,
      this.roles,
      this.customerType,
      this.accountNumbers,
      this.deviceId,
      this.deviceName,
      this.lastPinChange,
      this.platform,
      this.isPinRequired,
      this.isSecurityQuestionRequired,
      this.forceChangeOfPIN});

  UserDetails.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    userName = json['userName'];
    id = json['id'];
    createdBy = json['createdBy'];
    createdByIp = json['createdByIp'];
    createdDate = json['createdDate'];
    modifiedBy = json['modifiedBy'];
    modifiedByIp = json['modifiedByIp'];
    modifiedDate = json['modifiedDate'];
    status = json['status'];
    forceChangeOfPassword = json['forceChangeOfPassword'];
    lastLoginTime = json['lastLoginTime'];
    lastPasswordChange = json['lastPasswordChange'];
    lastPasswordReset = json['lastPasswordReset'];
    roles = json['roles'];
    customerType = json['customerType'];
    accountNumbers = json['accountNumbers'];
    deviceId = json['deviceId'];
    deviceName = json['deviceName'];
    lastPinChange = json['lastPinChange'];
    platform = json['platform'];
    isPinRequired = json['isPinRequired'];
    isSecurityQuestionRequired = json['isSecurityQuestionRequired'];
    forceChangeOfPIN = json['forceChangeOfPIN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['phoneNumber'] = phoneNumber;
    data['email'] = email;
    data['userName'] = userName;
    data['id'] = id;
    data['createdBy'] = createdBy;
    data['createdByIp'] = createdByIp;
    data['createdDate'] = createdDate;
    data['modifiedBy'] = modifiedBy;
    data['modifiedByIp'] = modifiedByIp;
    data['modifiedDate'] = modifiedDate;
    data['status'] = status;
    data['forceChangeOfPassword'] = forceChangeOfPassword;
    data['lastLoginTime'] = lastLoginTime;
    data['lastPasswordChange'] = lastPasswordChange;
    data['lastPasswordReset'] = lastPasswordReset;
    data['roles'] = roles;
    data['customerType'] = customerType;
    data['accountNumbers'] = accountNumbers;
    data['deviceId'] = deviceId;
    data['deviceName'] = deviceName;
    data['lastPinChange'] = lastPinChange;
    data['platform'] = platform;
    data['isPinRequired'] = isPinRequired;
    data['isSecurityQuestionRequired'] = isSecurityQuestionRequired;
    data['forceChangeOfPIN'] = forceChangeOfPIN;
    return data;
  }
}

class SecurityQuestion {
  String? question;
  String? id;
  String? createdBy;
  String? createdByIp;
  String? createdDate;
  Null modifiedBy;
  Null modifiedByIp;
  Null modifiedDate;
  bool? isDeleted;

  SecurityQuestion(
      {this.question,
      this.id,
      this.createdBy,
      this.createdByIp,
      this.createdDate,
      this.modifiedBy,
      this.modifiedByIp,
      this.modifiedDate,
      this.isDeleted});

  SecurityQuestion.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    id = json['id'];
    createdBy = json['createdBy'];
    createdByIp = json['createdByIp'];
    createdDate = json['createdDate'];
    modifiedBy = json['modifiedBy'];
    modifiedByIp = json['modifiedByIp'];
    modifiedDate = json['modifiedDate'];
    isDeleted = json['isDeleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['question'] = question;
    data['id'] = id;
    data['createdBy'] = createdBy;
    data['createdByIp'] = createdByIp;
    data['createdDate'] = createdDate;
    data['modifiedBy'] = modifiedBy;
    data['modifiedByIp'] = modifiedByIp;
    data['modifiedDate'] = modifiedDate;
    data['isDeleted'] = isDeleted;
    return data;
  }
}
