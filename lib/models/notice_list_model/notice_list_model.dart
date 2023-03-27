import 'dart:convert';

class NoticeListModel {
  int? noticeId;
  String? headLine;
  String? description;
  String? noticeDate;
  String? publishOn;
  String? publishTime;
  dynamic validUpto;
  int? orderNo;
  String? imagePath;
  String? content;
  String? noticeDateBs;
  String? publishOnBs;
  String? validUptoBs;
  List<dynamic>? attachmentColl;
  String? responseMsg;
  bool? isSuccess;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  NoticeListModel({
    this.noticeId,
    this.headLine,
    this.description,
    this.noticeDate,
    this.publishOn,
    this.publishTime,
    this.validUpto,
    this.orderNo,
    this.imagePath,
    this.content,
    this.noticeDateBs,
    this.publishOnBs,
    this.validUptoBs,
    this.attachmentColl,
    this.responseMsg,
    this.isSuccess,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory NoticeListModel.fromMap(Map<String, dynamic> data) {
    return NoticeListModel(
      noticeId: data['NoticeId'] as int?,
      headLine: data['HeadLine'] as String?,
      description: data['Description'] as String?,
      noticeDate: data['NoticeDate'] as String?,
      publishOn: data['PublishOn'] as String?,
      publishTime: data['PublishTime'] as String?,
      validUpto: data['ValidUpto'] as dynamic,
      orderNo: data['OrderNo'] as int?,
      imagePath: data['ImagePath'] as String?,
      content: data['Content'] as String?,
      noticeDateBs: data['NoticeDate_BS'] as String?,
      publishOnBs: data['PublishOn_BS'] as String?,
      validUptoBs: data['ValidUpto_BS'] as String?,
      attachmentColl: data['AttachmentColl'] as List<dynamic>?,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
      entityId: data['EntityId'] as int?,
      errorNumber: data['ErrorNumber'] as int?,
      cUserName: data['CUserName'] as String?,
      expireDateTime: data['ExpireDateTime'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'NoticeId': noticeId,
        'HeadLine': headLine,
        'Description': description,
        'NoticeDate': noticeDate,
        'PublishOn': publishOn,
        'PublishTime': publishTime,
        'ValidUpto': validUpto,
        'OrderNo': orderNo,
        'ImagePath': imagePath,
        'Content': content,
        'NoticeDate_BS': noticeDateBs,
        'PublishOn_BS': publishOnBs,
        'ValidUpto_BS': validUptoBs,
        'AttachmentColl': attachmentColl,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NoticeListModel].
  factory NoticeListModel.fromJson(String data) {
    return NoticeListModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NoticeListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  NoticeListModel copyWith({
    int? noticeId,
    String? headLine,
    String? description,
    String? noticeDate,
    String? publishOn,
    String? publishTime,
    dynamic validUpto,
    int? orderNo,
    String? imagePath,
    String? content,
    String? noticeDateBs,
    String? publishOnBs,
    String? validUptoBs,
    List<dynamic>? attachmentColl,
    String? responseMsg,
    bool? isSuccess,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return NoticeListModel(
      noticeId: noticeId ?? this.noticeId,
      headLine: headLine ?? this.headLine,
      description: description ?? this.description,
      noticeDate: noticeDate ?? this.noticeDate,
      publishOn: publishOn ?? this.publishOn,
      publishTime: publishTime ?? this.publishTime,
      validUpto: validUpto ?? this.validUpto,
      orderNo: orderNo ?? this.orderNo,
      imagePath: imagePath ?? this.imagePath,
      content: content ?? this.content,
      noticeDateBs: noticeDateBs ?? this.noticeDateBs,
      publishOnBs: publishOnBs ?? this.publishOnBs,
      validUptoBs: validUptoBs ?? this.validUptoBs,
      attachmentColl: attachmentColl ?? this.attachmentColl,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }
}
