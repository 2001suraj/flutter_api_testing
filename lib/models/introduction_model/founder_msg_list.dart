import 'dart:convert';

class FounderMsgList {
  dynamic founderMessageId;
  String? designation;
  String? title;
  String? description;
  String? imagePath;
  int? orderNo;
  String? qualification;
  String? responseMsg;
  bool? isSuccess;
  int? rId;
  int? cUserId;
  String? responseId;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  FounderMsgList({
    this.founderMessageId,
    this.designation,
    this.title,
    this.description,
    this.imagePath,
    this.orderNo,
    this.qualification,
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

  factory FounderMsgList.fromMap(Map<String, dynamic> data) {
    return FounderMsgList(
      founderMessageId: data['FounderMessageId'] as dynamic,
      designation: data['Designation'] as String?,
      title: data['Title'] as String?,
      description: data['Description'] as String?,
      imagePath: data['ImagePath'] as String?,
      orderNo: data['OrderNo'] as int?,
      qualification: data['Qualification'] as String?,
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
  }

  Map<String, dynamic> toMap() => {
        'FounderMessageId': founderMessageId,
        'Designation': designation,
        'Title': title,
        'Description': description,
        'ImagePath': imagePath,
        'OrderNo': orderNo,
        'Qualification': qualification,
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
  /// Parses the string and returns the resulting Json object as [FounderMsgList].
  factory FounderMsgList.fromJson(String data) {
    return FounderMsgList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FounderMsgList] to a JSON string.
  String toJson() => json.encode(toMap());

  FounderMsgList copyWith({
    dynamic founderMessageId,
    String? designation,
    String? title,
    String? description,
    String? imagePath,
    int? orderNo,
    String? qualification,
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
    return FounderMsgList(
      founderMessageId: founderMessageId ?? this.founderMessageId,
      designation: designation ?? this.designation,
      title: title ?? this.title,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      orderNo: orderNo ?? this.orderNo,
      qualification: qualification ?? this.qualification,
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
