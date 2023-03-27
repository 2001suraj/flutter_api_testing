import 'dart:convert';

class SliderListModel {
  int? sliderId;
  String? title;
  String? description;
  String? imagePath;
  int? orderNo;
  String? responseMsg;
  bool? isSuccess;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  SliderListModel({
    this.sliderId,
    this.title,
    this.description,
    this.imagePath,
    this.orderNo,
    this.responseMsg,
    this.isSuccess,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory SliderListModel.fromMap(Map<String, dynamic> data) {
    return SliderListModel(
      sliderId: data['SliderId'] as int?,
      title: data['Title'] as String?,
      description: data['Description'] as String?,
      imagePath: data['ImagePath'] as String?,
      orderNo: data['OrderNo'] as int?,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
      entityId: data['EntityId'] as int?,
      errorNumber: data['ErrorNumber'] as int?,
      cUserName: data['CUserName'] as String?,
      expireDateTime: data['ExpireDateTime'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'SliderId': sliderId,
        'Title': title,
        'Description': description,
        'ImagePath': imagePath,
        'OrderNo': orderNo,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SliderListModel].
  factory SliderListModel.fromJson(String data) {
    return SliderListModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SliderListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  SliderListModel copyWith({
    int? sliderId,
    String? title,
    String? description,
    String? imagePath,
    int? orderNo,
    String? responseMsg,
    bool? isSuccess,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return SliderListModel(
      sliderId: sliderId ?? this.sliderId,
      title: title ?? this.title,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      orderNo: orderNo ?? this.orderNo,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }
}
