import 'dart:convert';

class VideoListModel {
  int? videosId;
  String? title;
  String? description;
  String? addUrl;
  String? attachFilePath;
  int? orderNo;
  String? content;
  List<String>? urlColl;
  String? responseMsg;
  bool? isSuccess;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  VideoListModel({
    this.videosId,
    this.title,
    this.description,
    this.addUrl,
    this.attachFilePath,
    this.orderNo,
    this.content,
    this.urlColl,
    this.responseMsg,
    this.isSuccess,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory VideoListModel.fromMap(Map<String, dynamic> data) {
    return VideoListModel(
      videosId: data['VideosId'] as int?,
      title: data['Title'] as String?,
      description: data['Description'] as String?,
      addUrl: data['AddUrl'] as String?,
      attachFilePath: data['AttachFilePath'] as String?,
      orderNo: data['OrderNo'] as int?,
      content: data['Content'] as String?,
      urlColl: data['UrlColl'] as List<String>?,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
      entityId: data['EntityId'] as int?,
      errorNumber: data['ErrorNumber'] as int?,
      cUserName: data['CUserName'] as String?,
      expireDateTime: data['ExpireDateTime'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'VideosId': videosId,
        'Title': title,
        'Description': description,
        'AddUrl': addUrl,
        'AttachFilePath': attachFilePath,
        'OrderNo': orderNo,
        'Content': content,
        'UrlColl': urlColl,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VideoListModel].
  factory VideoListModel.fromJson(String data) {
    return VideoListModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [VideoListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  VideoListModel copyWith({
    int? videosId,
    String? title,
    String? description,
    String? addUrl,
    String? attachFilePath,
    int? orderNo,
    String? content,
    List<String>? urlColl,
    String? responseMsg,
    bool? isSuccess,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return VideoListModel(
      videosId: videosId ?? this.videosId,
      title: title ?? this.title,
      description: description ?? this.description,
      addUrl: addUrl ?? this.addUrl,
      attachFilePath: attachFilePath ?? this.attachFilePath,
      orderNo: orderNo ?? this.orderNo,
      content: content ?? this.content,
      urlColl: urlColl ?? this.urlColl,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }
}
