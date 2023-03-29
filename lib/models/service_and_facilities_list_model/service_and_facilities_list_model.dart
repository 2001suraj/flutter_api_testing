// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ServiceAndFacilitiesListModel {
  int? tranId;
  String? title;
  int? orderNo;
  String? description;
  String? content;
  String? imagePath;
  String? responseMsg;
  bool? isSuccess;

  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  ServiceAndFacilitiesListModel({
    this.tranId,
    this.title,
    this.orderNo,
    this.description,
    this.content,
    this.imagePath,
    this.responseMsg,
    this.isSuccess,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory ServiceAndFacilitiesListModel.fromMap(Map<String, dynamic> data) {
    return ServiceAndFacilitiesListModel(
      tranId: data['TranId'] as int?,
      title: data['Title'] as String?,
      orderNo: data['OrderNo'] as int?,
      description: data['Description'] as String?,
      content: data['Content'] as String?,
      imagePath: data['ImagePath'] as String?,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
      entityId: data['EntityId'] as int?,
      errorNumber: data['ErrorNumber'] as int?,
      cUserName: data['CUserName'] as String?,
      expireDateTime: data['ExpireDateTime'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'TranId': tranId,
        'Title': title,
        'OrderNo': orderNo,
        'Description': description,
        'Content': content,
        'ImagePath': imagePath,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ServiceAndFacilitiesListModel].
  factory ServiceAndFacilitiesListModel.fromJson(String data) {
    return ServiceAndFacilitiesListModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ServiceAndFacilitiesListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  ServiceAndFacilitiesListModel copyWith({
    int? tranId,
    String? title,
    int? orderNo,
    String? description,
    String? content,
    String? imagePath,
    String? responseMsg,
    bool? isSuccess,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return ServiceAndFacilitiesListModel(
      tranId: tranId ?? this.tranId,
      title: title ?? this.title,
      orderNo: orderNo ?? this.orderNo,
      description: description ?? this.description,
      content: content ?? this.content,
      imagePath: imagePath ?? this.imagePath,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }

  @override
  String toString() {
    return 'ServiceAndFacilitiesListModel(tranId: $tranId, title: $title, orderNo: $orderNo, description: $description, content: $content, imagePath: $imagePath, responseMsg: $responseMsg, isSuccess: $isSuccess, entityId: $entityId, errorNumber: $errorNumber, cUserName: $cUserName, expireDateTime: $expireDateTime)';
  }
}
