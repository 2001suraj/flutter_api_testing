import 'dart:convert';

class NotificationLogsModel {
  int? tranId;
  bool? isRead;
  String? heading;
  String? subject;
  String? content;
  String? contentPath;
  int? entityId;
  String? entityName;
  DateTime? logDateAd;
  String? logDateBs;
  String? atTime;
  String? sendUserBy;
  String? sendByPhotoPath;
  String? sendBy;
  String? notificationType;
  String? sendReceived;
  String? classSection;

  NotificationLogsModel({
    this.tranId,
    this.isRead,
    this.heading,
    this.subject,
    this.content,
    this.contentPath,
    this.entityId,
    this.entityName,
    this.logDateAd,
    this.logDateBs,
    this.atTime,
    this.sendUserBy,
    this.sendByPhotoPath,
    this.sendBy,
    this.notificationType,
    this.sendReceived,
    this.classSection,
  });

  factory NotificationLogsModel.fromMap(Map<String, dynamic> data) {
    return NotificationLogsModel(
      tranId: data['TranId'] as int?,
      isRead: data['IsRead'] as bool?,
      heading: data['Heading'] as String?,
      subject: data['Subject'] as String?,
      content: data['Content'] as String?,
      contentPath: data['ContentPath'] as String?,
      entityId: data['EntityId'] as int?,
      entityName: data['EntityName'] as String?,
      logDateAd: data['LogDate_AD'] == null
          ? null
          : DateTime.parse(data['LogDate_AD'] as String),
      logDateBs: data['LogDate_BS'] as String?,
      atTime: data['AtTime'] as String?,
      sendUserBy: data['SendUserBy'] as String?,
      sendByPhotoPath: data['SendByPhotoPath'] as String?,
      sendBy: data['SendBy'] as String?,
      notificationType: data['NotificationType'] as String?,
      sendReceived: data['SendReceived'] as String?,
      classSection: data['ClassSection'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'TranId': tranId,
        'IsRead': isRead,
        'Heading': heading,
        'Subject': subject,
        'Content': content,
        'ContentPath': contentPath,
        'EntityId': entityId,
        'EntityName': entityName,
        'LogDate_AD': logDateAd?.toIso8601String(),
        'LogDate_BS': logDateBs,
        'AtTime': atTime,
        'SendUserBy': sendUserBy,
        'SendByPhotoPath': sendByPhotoPath,
        'SendBy': sendBy,
        'NotificationType': notificationType,
        'SendReceived': sendReceived,
        'ClassSection': classSection,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NotificationLogsModel].
  factory NotificationLogsModel.fromJson(String data) {
    return NotificationLogsModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NotificationLogsModel] to a JSON string.
  String toJson() => json.encode(toMap());

  NotificationLogsModel copyWith({
    int? tranId,
    bool? isRead,
    String? heading,
    String? subject,
    String? content,
    String? contentPath,
    int? entityId,
    String? entityName,
    DateTime? logDateAd,
    String? logDateBs,
    String? atTime,
    String? sendUserBy,
    String? sendByPhotoPath,
    String? sendBy,
    String? notificationType,
    String? sendReceived,
    String? classSection,
  }) {
    return NotificationLogsModel(
      tranId: tranId ?? this.tranId,
      isRead: isRead ?? this.isRead,
      heading: heading ?? this.heading,
      subject: subject ?? this.subject,
      content: content ?? this.content,
      contentPath: contentPath ?? this.contentPath,
      entityId: entityId ?? this.entityId,
      entityName: entityName ?? this.entityName,
      logDateAd: logDateAd ?? this.logDateAd,
      logDateBs: logDateBs ?? this.logDateBs,
      atTime: atTime ?? this.atTime,
      sendUserBy: sendUserBy ?? this.sendUserBy,
      sendByPhotoPath: sendByPhotoPath ?? this.sendByPhotoPath,
      sendBy: sendBy ?? this.sendBy,
      notificationType: notificationType ?? this.notificationType,
      sendReceived: sendReceived ?? this.sendReceived,
      classSection: classSection ?? this.classSection,
    );
  }
}
