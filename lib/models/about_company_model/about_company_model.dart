import 'dart:convert';

class AboutCompanyModel {
  String? name;
  String? address;
  String? phoneNo;
  String? faxNo;
  String? emalId;
  String? webSite;
  String? logoPath;
  String? imagePath;
  String? bannerPath;
  String? content;
  String? country;
  String? affiliatedLogo;
  String? responseMsg;
  bool? isSuccess;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  AboutCompanyModel({
    this.name,
    this.address,
    this.phoneNo,
    this.faxNo,
    this.emalId,
    this.webSite,
    this.logoPath,
    this.imagePath,
    this.bannerPath,
    this.content,
    this.country,
    this.affiliatedLogo,
    this.responseMsg,
    this.isSuccess,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory AboutCompanyModel.fromMap(Map<String, dynamic> data) {
    return AboutCompanyModel(
      name: data['Name'] as String?,
      address: data['Address'] as String?,
      phoneNo: data['PhoneNo'] as String?,
      faxNo: data['FaxNo'] as String?,
      emalId: data['EmalId'] as String?,
      webSite: data['WebSite'] as String?,
      logoPath: data['LogoPath'] as String?,
      imagePath: data['ImagePath'] as String?,
      bannerPath: data['BannerPath'] as String?,
      content: data['Content'] as String?,
      country: data['Country'] as String?,
      affiliatedLogo: data['AffiliatedLogo'] as String?,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
      entityId: data['EntityId'] as int?,
      errorNumber: data['ErrorNumber'] as int?,
      cUserName: data['CUserName'] as String?,
      expireDateTime: data['ExpireDateTime'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'Name': name,
        'Address': address,
        'PhoneNo': phoneNo,
        'FaxNo': faxNo,
        'EmalId': emalId,
        'WebSite': webSite,
        'LogoPath': logoPath,
        'ImagePath': imagePath,
        'BannerPath': bannerPath,
        'Content': content,
        'Country': country,
        'AffiliatedLogo': affiliatedLogo,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AboutCompanyModel].
  factory AboutCompanyModel.fromJson(String data) {
    return AboutCompanyModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AboutCompanyModel] to a JSON string.
  String toJson() => json.encode(toMap());

  AboutCompanyModel copyWith({
    String? name,
    String? address,
    String? phoneNo,
    String? faxNo,
    String? emalId,
    String? webSite,
    String? logoPath,
    String? imagePath,
    String? bannerPath,
    String? content,
    String? country,
    String? affiliatedLogo,
    String? responseMsg,
    bool? isSuccess,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return AboutCompanyModel(
      name: name ?? this.name,
      address: address ?? this.address,
      phoneNo: phoneNo ?? this.phoneNo,
      faxNo: faxNo ?? this.faxNo,
      emalId: emalId ?? this.emalId,
      webSite: webSite ?? this.webSite,
      logoPath: logoPath ?? this.logoPath,
      imagePath: imagePath ?? this.imagePath,
      bannerPath: bannerPath ?? this.bannerPath,
      content: content ?? this.content,
      country: country ?? this.country,
      affiliatedLogo: affiliatedLogo ?? this.affiliatedLogo,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }
}
