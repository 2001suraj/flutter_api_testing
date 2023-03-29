import 'dart:convert';

class AssignmentTypeListModel {
  int? assignmentTypeId;
  String? name;
  dynamic description;
  String? responseMsg;
  bool? isSuccess;

  AssignmentTypeListModel({
    this.assignmentTypeId,
    this.name,
    this.description,
    this.responseMsg,
    this.isSuccess,
  });

  factory AssignmentTypeListModel.fromMap(Map<String, dynamic> data) {
    return AssignmentTypeListModel(
      assignmentTypeId: data['AssignmentTypeId'] as int?,
      name: data['Name'] as String?,
      description: data['Description'] as dynamic,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
        'AssignmentTypeId': assignmentTypeId,
        'Name': name,
        'Description': description,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AssignmentTypeListModel].
  factory AssignmentTypeListModel.fromJson(String data) {
    return AssignmentTypeListModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AssignmentTypeListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  AssignmentTypeListModel copyWith({
    int? assignmentTypeId,
    String? name,
    dynamic description,
    String? responseMsg,
    bool? isSuccess,
  }) {
    return AssignmentTypeListModel(
      assignmentTypeId: assignmentTypeId ?? this.assignmentTypeId,
      name: name ?? this.name,
      description: description ?? this.description,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
