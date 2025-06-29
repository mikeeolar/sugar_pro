class UserDetailResponse {
  bool? success;
  UserData? userData;

  UserDetailResponse({this.success, this.userData});

  UserDetailResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    userData =
        json['payload'] != null ? UserData.fromJson(json['payload']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (userData != null) {
      data['payload'] = userData!.toJson();
    }
    return data;
  }
}

class UserData {
  CustomerInfo? customerInfo;
  KycInfo? kycInfo;

  UserData({this.customerInfo, this.kycInfo});

  UserData.fromJson(Map<String, dynamic> json) {
    customerInfo = json['customerInfo'] != null
        ? CustomerInfo.fromJson(json['customerInfo'])
        : null;
    kycInfo =
        json['kycInfo'] != null ? KycInfo.fromJson(json['kycInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (customerInfo != null) {
      data['customerInfo'] = customerInfo!.toJson();
    }
    if (kycInfo != null) {
      data['kycInfo'] = kycInfo!.toJson();
    }
    return data;
  }
}

class CustomerInfo {
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? gender;
  bool? isVerified;
  bool? isActive;
  String? country;
  String? role;
  dynamic metadata;
  int? attempts;
  dynamic lastAttemptAt;
  String? ipAddress;
  String? deviceType;
  String? sendEmail;
  String? sendPushNotification;
  String? sendSms;
  dynamic firebaseToken;
  String? profileUrl;
  Customer? customer;

  CustomerInfo(
      {this.userId,
      this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.gender,
      this.isVerified,
      this.isActive,
      this.country,
      this.role,
      this.metadata,
      this.attempts,
      this.lastAttemptAt,
      this.ipAddress,
      this.deviceType,
      this.sendEmail,
      this.sendPushNotification,
      this.sendSms,
      this.firebaseToken,
      this.profileUrl,
      this.customer});

  CustomerInfo.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    isVerified = json['isVerified'];
    isActive = json['isActive'];
    country = json['country'];
    role = json['role'];
    metadata = json['metadata'];
    attempts = json['attempts'];
    lastAttemptAt = json['lastAttemptAt'];
    ipAddress = json['ipAddress'];
    deviceType = json['deviceType'];
    sendEmail = json['sendEmail'];
    sendPushNotification = json['sendPushNotification'];
    sendSms = json['sendSms'];
    firebaseToken = json['firebaseToken'];
    profileUrl = json['profileUrl'];
    customer = json['Customer'] != null
        ? Customer.fromJson(json['Customer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['gender'] = gender;
    data['isVerified'] = isVerified;
    data['isActive'] = isActive;
    data['country'] = country;
    data['role'] = role;
    data['metadata'] = metadata;
    data['attempts'] = attempts;
    data['lastAttemptAt'] = lastAttemptAt;
    data['ipAddress'] = ipAddress;
    data['deviceType'] = deviceType;
    data['sendEmail'] = sendEmail;
    data['sendPushNotification'] = sendPushNotification;
    data['sendSms'] = sendSms;
    data['firebaseToken'] = firebaseToken;
    data['profileUrl'] = profileUrl;
    if (customer != null) {
      data['Customer'] = customer!.toJson();
    }
    return data;
  }
}

class Customer {
  String? customerId;
  String? id;
  String? address;
  String? mode;
  String? bVNFirstName;
  String? bVNLastName;
  bool? nameMatch;
  String? dateOfBirth;
  dynamic metadata;
  String? tier;
  String? xCustomerId;
  String? userId;

  Customer(
      {this.customerId,
      this.id,
      this.address,
      this.mode,
      this.bVNFirstName,
      this.bVNLastName,
      this.nameMatch,
      this.dateOfBirth,
      this.metadata,
      this.tier,
      this.xCustomerId,
      this.userId});

  Customer.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    id = json['id'];
    address = json['address'];
    mode = json['mode'];
    bVNFirstName = json['BVNFirstName'];
    bVNLastName = json['BVNLastName'];
    nameMatch = json['nameMatch'];
    dateOfBirth = json['dateOfBirth'];
    metadata = json['metadata'];
    tier = json['tier'];
    xCustomerId = json['XCustomerId'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['id'] = id;
    data['address'] = address;
    data['mode'] = mode;
    data['BVNFirstName'] = bVNFirstName;
    data['BVNLastName'] = bVNLastName;
    data['nameMatch'] = nameMatch;
    data['dateOfBirth'] = dateOfBirth;
    data['metadata'] = metadata;
    data['tier'] = tier;
    data['XCustomerId'] = xCustomerId;
    data['userId'] = userId;
    return data;
  }
}

class KycInfo {
  String? kycId;
  String? dateOfBirth;
  String? status;
  String? ninBvnMatch;
  String? liveNessMatch;
  String? createdAt;
  String? updatedAt;
  String? customerId;

  KycInfo(
      {this.kycId,
      this.dateOfBirth,
      this.status,
      this.ninBvnMatch,
      this.liveNessMatch,
      this.createdAt,
      this.updatedAt,
      this.customerId});

  KycInfo.fromJson(Map<String, dynamic> json) {
    kycId = json['kycId'];
    dateOfBirth = json['dateOfBirth'];
    status = json['status'];
    ninBvnMatch = json['ninBvnMatch'];
    liveNessMatch = json['liveNessMatch'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    customerId = json['customerId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kycId'] = kycId;
    data['dateOfBirth'] = dateOfBirth;
    data['status'] = status;
    data['ninBvnMatch'] = ninBvnMatch;
    data['liveNessMatch'] = liveNessMatch;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['customerId'] = customerId;
    return data;
  }
}
