import 'dart:convert';

import 'data_coll.dart';

class AssignmentListModel {
  int? classId;
  int? sectionId;
  String? className;
  String? sectionName;
  int? total;
  List<DataColl>? dataColl;

  AssignmentListModel({
    this.classId,
    this.sectionId,
    this.className,
    this.sectionName,
    this.total,
    this.dataColl,
  });

  factory AssignmentListModel.fromMap(Map<String, dynamic> data) {
    return AssignmentListModel(
      classId: data['ClassId'] as int?,
      sectionId: data['SectionId'] as int?,
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
  /// Parses the string and returns the resulting Json object as [AssignmentListModel].
  factory AssignmentListModel.fromJson(String data) {
    return AssignmentListModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AssignmentListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  AssignmentListModel copyWith({
    int? classId,
    int? sectionId,
    String? className,
    String? sectionName,
    int? total,
    List<DataColl>? dataColl,
  }) {
    return AssignmentListModel(
      classId: classId ?? this.classId,
      sectionId: sectionId ?? this.sectionId,
      className: className ?? this.className,
      sectionName: sectionName ?? this.sectionName,
      total: total ?? this.total,
      dataColl: dataColl ?? this.dataColl,
    );
  }
}
