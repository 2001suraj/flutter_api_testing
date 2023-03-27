import 'dart:convert';

class TeacherLoginModel {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? refreshToken;
  String? userName;
  String? userId;
  String? customerCode;
  String? userGroup;
  String? name;
  String? photoPath;
  String? qrCode;
  String? smsOtp;
  String? emailOtp;
  String? googleOtp;
  String? issued;
  String? expires;

  TeacherLoginModel({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.userName,
    this.userId,
    this.customerCode,
    this.userGroup,
    this.name,
    this.photoPath,
    this.qrCode,
    this.smsOtp,
    this.emailOtp,
    this.googleOtp,
    this.issued,
    this.expires,
  });

  factory TeacherLoginModel.fromMap(Map<String, dynamic> data) {
    return TeacherLoginModel(
      accessToken: data['access_token'] as String?,
      tokenType: data['token_type'] as String?,
      expiresIn: data['expires_in'] as int?,
      refreshToken: data['refresh_token'] as String?,
      userName: data['userName'] as String?,
      userId: data['userId'] as String?,
      customerCode: data['customerCode'] as String?,
      userGroup: data['userGroup'] as String?,
      name: data['name'] as String?,
      photoPath: data['photoPath'] as String?,
      qrCode: data['qrCode'] as String?,
      smsOtp: data['smsOTP'] as String?,
      emailOtp: data['emailOTP'] as String?,
      googleOtp: data['googleOTP'] as String?,
      issued: data['.issued'] as String?,
      expires: data['.expires'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'access_token': accessToken,
        'token_type': tokenType,
        'expires_in': expiresIn,
        'refresh_token': refreshToken,
        'userName': userName,
        'userId': userId,
        'customerCode': customerCode,
        'userGroup': userGroup,
        'name': name,
        'photoPath': photoPath,
        'qrCode': qrCode,
        'smsOTP': smsOtp,
        'emailOTP': emailOtp,
        'googleOTP': googleOtp,
        '.issued': issued,
        '.expires': expires,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TeacherLoginModel].
  factory TeacherLoginModel.fromJson(String data) {
    return TeacherLoginModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TeacherLoginModel] to a JSON string.
  String toJson() => json.encode(toMap());

  TeacherLoginModel copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    String? refreshToken,
    String? userName,
    String? userId,
    String? customerCode,
    String? userGroup,
    String? name,
    String? photoPath,
    String? qrCode,
    String? smsOtp,
    String? emailOtp,
    String? googleOtp,
    String? issued,
    String? expires,
  }) {
    return TeacherLoginModel(
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      refreshToken: refreshToken ?? this.refreshToken,
      userName: userName ?? this.userName,
      userId: userId ?? this.userId,
      customerCode: customerCode ?? this.customerCode,
      userGroup: userGroup ?? this.userGroup,
      name: name ?? this.name,
      photoPath: photoPath ?? this.photoPath,
      qrCode: qrCode ?? this.qrCode,
      smsOtp: smsOtp ?? this.smsOtp,
      emailOtp: emailOtp ?? this.emailOtp,
      googleOtp: googleOtp ?? this.googleOtp,
      issued: issued ?? this.issued,
      expires: expires ?? this.expires,
    );
  }
}
