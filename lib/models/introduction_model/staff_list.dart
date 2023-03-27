import 'dart:convert';

import 'emp_coll.dart';

class StaffList {
  String? department;
  List<EmpColl>? empColl;

  StaffList({this.department, this.empColl});

  factory StaffList.fromMap(Map<String, dynamic> data) => StaffList(
        department: data['Department'] as String?,
        empColl: (data['EmpColl'] as List<dynamic>?)
            ?.map((e) => EmpColl.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'Department': department,
        'EmpColl': empColl?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [StaffList].
  factory StaffList.fromJson(String data) {
    return StaffList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [StaffList] to a JSON string.
  String toJson() => json.encode(toMap());

  StaffList copyWith({
    String? department,
    List<EmpColl>? empColl,
  }) {
    return StaffList(
      department: department ?? this.department,
      empColl: empColl ?? this.empColl,
    );
  }
}
