import 'dart:convert';

class HomeworkTypeListModel {
  int? homeworkTypeId;
  String? name;
  String? description;
  String? responseMsg;
  bool? isSuccess;

  HomeworkTypeListModel({
    this.homeworkTypeId,
    this.name,
    this.description,
    this.responseMsg,
    this.isSuccess,
  });

  factory HomeworkTypeListModel.fromMap(Map<String, dynamic> data) {
    return HomeworkTypeListModel(
      homeworkTypeId: data['HomeworkTypeId'] as int?,
      name: data['Name'] as String?,
      description: data['Description'] as String?,
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
        'HomeworkTypeId': homeworkTypeId,
        'Name': name,
        'Description': description,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HomeworkTypeListModel].
  factory HomeworkTypeListModel.fromJson(String data) {
    return HomeworkTypeListModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [HomeworkTypeListModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
