import 'dart:convert';

import 'image_coll.dart';

class GalleryListModel {
  int? galleryId;
  String? title;
  String? description;
  int? orderNo;
  List<ImageColl>? imageColl;
  String? responseMsg;
  bool? isSuccess;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  GalleryListModel({
    this.galleryId,
    this.title,
    this.description,
    this.orderNo,
    this.imageColl,
    this.responseMsg,
    this.isSuccess,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory GalleryListModel.fromMap(Map<String, dynamic> data) {
    return GalleryListModel(
      galleryId: data['GalleryId'] as int?,
      title: data['Title'] as String?,
      description: data['Description'] as String?,
      orderNo: data['OrderNo'] as int?,
      imageColl: (data['ImageColl'] as List<dynamic>?)
          ?.map((e) => ImageColl.fromMap(e as Map<String, dynamic>))
          .toList(),
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
      entityId: data['EntityId'] as int?,
      errorNumber: data['ErrorNumber'] as int?,
      cUserName: data['CUserName'] as String?,
      expireDateTime: data['ExpireDateTime'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'GalleryId': galleryId,
        'Title': title,
        'Description': description,
        'OrderNo': orderNo,
        'ImageColl': imageColl?.map((e) => e.toMap()).toList(),
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GalleryListModel].
  factory GalleryListModel.fromJson(String data) {
    return GalleryListModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GalleryListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  GalleryListModel copyWith({
    int? galleryId,
    String? title,
    String? description,
    int? orderNo,
    List<ImageColl>? imageColl,
    String? responseMsg,
    bool? isSuccess,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return GalleryListModel(
      galleryId: galleryId ?? this.galleryId,
      title: title ?? this.title,
      description: description ?? this.description,
      orderNo: orderNo ?? this.orderNo,
      imageColl: imageColl ?? this.imageColl,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }
}
