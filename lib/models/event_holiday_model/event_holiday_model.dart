import 'dart:convert';

class EventHolidayModel {
  String? holidayEvent;
  String? eventType;
  String? name;
  String? description;
  String? fromDateAd;
  String? toDateAd;
  String? fromDateBs;
  String? toDateBs;
  String? forClass;
  String? colorCode;
  String? imagePath;
  String? remaining;
  dynamic atTime;

  EventHolidayModel({
    this.holidayEvent,
    this.eventType,
    this.name,
    this.description,
    this.fromDateAd,
    this.toDateAd,
    this.fromDateBs,
    this.toDateBs,
    this.forClass,
    this.colorCode,
    this.imagePath,
    this.remaining,
    this.atTime,
  });

  factory EventHolidayModel.fromMap(Map<String, dynamic> data) {
    return EventHolidayModel(
      holidayEvent: data['HolidayEvent'] as String?,
      eventType: data['EventType'] as String?,
      name: data['Name'] as String?,
      description: data['Description'] as String?,
      fromDateAd: data['FromDate_AD'] as String?,
      toDateAd: data['ToDate_AD'] as String?,
      fromDateBs: data['FromDate_BS'] as String?,
      toDateBs: data['ToDate_BS'] as String?,
      forClass: data['ForClass'] as String?,
      colorCode: data['ColorCode'] as String?,
      imagePath: data['ImagePath'] as String?,
      remaining: data['Remaining'] as String?,
      atTime: data['AtTime'] as dynamic,
    );
  }

  Map<String, dynamic> toMap() => {
        'HolidayEvent': holidayEvent,
        'EventType': eventType,
        'Name': name,
        'Description': description,
        'FromDate_AD': fromDateAd,
        'ToDate_AD': toDateAd,
        'FromDate_BS': fromDateBs,
        'ToDate_BS': toDateBs,
        'ForClass': forClass,
        'ColorCode': colorCode,
        'ImagePath': imagePath,
        'Remaining': remaining,
        'AtTime': atTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [EventHolidayModel].
  factory EventHolidayModel.fromJson(String data) {
    return EventHolidayModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EventHolidayModel] to a JSON string.
  String toJson() => json.encode(toMap());

  EventHolidayModel copyWith({
    String? holidayEvent,
    String? eventType,
    String? name,
    String? description,
    String? fromDateAd,
    String? toDateAd,
    String? fromDateBs,
    String? toDateBs,
    String? forClass,
    String? colorCode,
    String? imagePath,
    String? remaining,
    dynamic atTime,
  }) {
    return EventHolidayModel(
      holidayEvent: holidayEvent ?? this.holidayEvent,
      eventType: eventType ?? this.eventType,
      name: name ?? this.name,
      description: description ?? this.description,
      fromDateAd: fromDateAd ?? this.fromDateAd,
      toDateAd: toDateAd ?? this.toDateAd,
      fromDateBs: fromDateBs ?? this.fromDateBs,
      toDateBs: toDateBs ?? this.toDateBs,
      forClass: forClass ?? this.forClass,
      colorCode: colorCode ?? this.colorCode,
      imagePath: imagePath ?? this.imagePath,
      remaining: remaining ?? this.remaining,
      atTime: atTime ?? this.atTime,
    );
  }
}
