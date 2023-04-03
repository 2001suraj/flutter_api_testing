import 'dart:convert';

import 'data_coll.dart';

class HomeworkListModel {
  int? classId;
  dynamic sectionId;
  String? className;
  String? sectionName;
  int? total;
  List<DataColl>? dataColl;

  HomeworkListModel({
    this.classId,
    this.sectionId,
    this.className,
    this.sectionName,
    this.total,
    this.dataColl,
  });

  factory HomeworkListModel.fromMap(Map<String, dynamic> data) {
    return HomeworkListModel(
      classId: data['ClassId'] as int?,
      sectionId: data['SectionId'] as dynamic,
      className: data['ClassName'] as String?,
      sectionName: data['SectionName'] as String?,
      total: data['Total'] as int?,
      dataColl: (data['DataColl'] as List<dynamic>?)
          ?.map((e) => DataColl.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'ClassId': classId,
        'SectionId': sectionId,
        'ClassName': className,
        'SectionName': sectionName,
        'Total': total,
        'DataColl': dataColl?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HomeworkListModel].
  factory HomeworkListModel.fromJson(String data) {
    return HomeworkListModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [HomeworkLIstModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
