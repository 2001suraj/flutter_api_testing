import 'dart:convert';

class LeaveTypeModel {
  int? leaveTypeId;
  String? name;
  String? code;
  String? responseMsg;
  bool? isSuccess;

  LeaveTypeModel({
    this.leaveTypeId,
    this.name,
    this.code,
    this.responseMsg,
    this.isSuccess,
  });

  factory LeaveTypeModel.fromMap(Map<String, dynamic> data) {
    return LeaveTypeModel(
      leaveTypeId: data['LeaveTypeId'] as int?,
      name: data['Name'] as String?,
      code: data['Code'] as String?,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
        'LeaveTypeId': leaveTypeId,
        'Name': name,
        'Code': code,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LeaveTypeModel].
  factory LeaveTypeModel.fromJson(String data) {
    return LeaveTypeModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [LeaveTypeModel] to a JSON string.
  String toJson() => json.encode(toMap());

  LeaveTypeModel copyWith({
    int? leaveTypeId,
    String? name,
    String? code,
    String? responseMsg,
    bool? isSuccess,
  }) {
    return LeaveTypeModel(
      leaveTypeId: leaveTypeId ?? this.leaveTypeId,
      name: name ?? this.name,
      code: code ?? this.code,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
