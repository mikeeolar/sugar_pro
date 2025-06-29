class ExistingSignUpResponse {
  Token? token;

  ExistingSignUpResponse({this.token});

  ExistingSignUpResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'] != null ? Token.fromJson(json['token']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (token != null) {
      data['token'] = token!.toJson();
    }
    return data;
  }
}

class Token {
  String? accessToken;
  String? tokenType;
  String? expiresIn;
  String? refreshToken;
  ExistingUser? existingUser;

  Token(
      {this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.refreshToken,
      this.existingUser});

  Token.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    tokenType = json['tokenType'];
    expiresIn = json['expiresIn'];
    refreshToken = json['refreshToken'];
    existingUser = json['userDetails'] != null
        ? ExistingUser.fromJson(json['userDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['tokenType'] = tokenType;
    data['expiresIn'] = expiresIn;
    data['refreshToken'] = refreshToken;
    if (existingUser != null) {
      data['userDetails'] = existingUser!.toJson();
    }
    return data;
  }
}

class ExistingUser {
  String? firstName;
  String? phoneNumber;
  String? email;
  String? userName;
  String? id;
  String? createdBy;
  String? createdByIp;
  String? createdDate;
  Null modifiedBy;
  Null modifiedByIp;
  Null modifiedDate;
  String? status;
  bool? forceChangeOfPassword;
  String? lastLoginTime;
  Null lastPasswordChange;
  Null lastPasswordReset;
  Null roles;
  int? customerType;
  String? accountNumbers;
  String? deviceId;
  String? deviceName;
  Null lastPinChange;
  int? platform;
  bool? isPinRequired;
  bool? isSecurityQuestionRequired;

  ExistingUser(
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
      this.isSecurityQuestionRequired});

  ExistingUser.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}
