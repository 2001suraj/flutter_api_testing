import 'dart:convert';

class NotificationCountModel {
  int? total;
  int? read;
  int? unRead;
  bool? isSuccess;
  String? responseMsg;

  NotificationCountModel({
    this.total,
    this.read,
    this.unRead,
    this.isSuccess,
    this.responseMsg,
  });

  factory NotificationCountModel.fromMap(Map<String, dynamic> data) {
    return NotificationCountModel(
      total: data['Total'] as int?,
      read: data['Read'] as int?,
      unRead: data['UnRead'] as int?,
      isSuccess: data['IsSuccess'] as bool?,
      responseMsg: data['ResponseMSG'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'Total': total,
        'Read': read,
        'UnRead': unRead,
        'IsSuccess': isSuccess,
        'ResponseMSG': responseMsg,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NotificationCountModel].
  factory NotificationCountModel.fromJson(String data) {
    return NotificationCountModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NotificationCountModel] to a JSON string.
  String toJson() => json.encode(toMap());

  NotificationCountModel copyWith({
    int? total,
    int? read,
    int? unRead,
    bool? isSuccess,
    String? responseMsg,
  }) {
    return NotificationCountModel(
      total: total ?? this.total,
      read: read ?? this.read,
      unRead: unRead ?? this.unRead,
      isSuccess: isSuccess ?? this.isSuccess,
      responseMsg: responseMsg ?? this.responseMsg,
    );
  }
}
