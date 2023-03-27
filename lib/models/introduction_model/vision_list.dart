import 'dart:convert';

class VisionList {
  dynamic visionStatementId;
  String? title;
  String? description;
  String? imagePath;
  int? orderNo;
  String? responseMsg;
  bool? isSuccess;
  int? rId;
  int? cUserId;
  String? responseId;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  VisionList({
    this.visionStatementId,
    this.title,
    this.description,
    this.imagePath,
    this.orderNo,
    this.responseMsg,
    this.isSuccess,
    this.rId,
    this.cUserId,
    this.responseId,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory VisionList.fromMap(Map<String, dynamic> data) => VisionList(
        visionStatementId: data['VisionStatementId'] as dynamic,
        title: data['Title'] as String?,
        description: data['Description'] as String?,
        imagePath: data['ImagePath'] as String?,
        orderNo: data['OrderNo'] as int?,
        responseMsg: data['ResponseMSG'] as String?,
        isSuccess: data['IsSuccess'] as bool?,
        rId: data['RId'] as int?,
        cUserId: data['CUserId'] as int?,
        responseId: data['ResponseId'] as String?,
        entityId: data['EntityId'] as int?,
        errorNumber: data['ErrorNumber'] as int?,
        cUserName: data['CUserName'] as String?,
        expireDateTime: data['ExpireDateTime'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'VisionStatementId': visionStatementId,
        'Title': title,
        'Description': description,
        'ImagePath': imagePath,
        'OrderNo': orderNo,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'RId': rId,
        'CUserId': cUserId,
        'ResponseId': responseId,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VisionList].
  factory VisionList.fromJson(String data) {
    return VisionList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [VisionList] to a JSON string.
  String toJson() => json.encode(toMap());

  VisionList copyWith({
    dynamic visionStatementId,
    String? title,
    String? description,
    String? imagePath,
    int? orderNo,
    String? responseMsg,
    bool? isSuccess,
    int? rId,
    int? cUserId,
    String? responseId,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return VisionList(
      visionStatementId: visionStatementId ?? this.visionStatementId,
      title: title ?? this.title,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      orderNo: orderNo ?? this.orderNo,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      rId: rId ?? this.rId,
      cUserId: cUserId ?? this.cUserId,
      responseId: responseId ?? this.responseId,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }
}
