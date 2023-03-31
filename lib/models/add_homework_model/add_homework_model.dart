
// ignore_for_file: public_member_api_docs, sort_constructors_first

class AddHomeworkModel {
  int? homeworkTypeId;
  int? classId;
  int? sectionId;
  int? subjectId;
  String? lesson;
  String? topic;
  String? description;
  String? deadlineDate;
  String? deadlineTime;
  String? deadlineforRedo;
  String? deadlineforRedoTime;
  bool? isAllowLateSibmission;
  AddHomeworkModel({
    required this.homeworkTypeId,
    required this.classId,
    required this.sectionId,
    required this.subjectId,
    required this.lesson,
    required this.topic,
    required this.description,
    required this.deadlineDate,
    required this.deadlineTime,
    required this.deadlineforRedo,
    required this.deadlineforRedoTime,
    required this.isAllowLateSibmission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeworkTypeId': homeworkTypeId,
      'classId': classId,
      'sectionId': sectionId,
      'subjectId': subjectId,
      'lesson': lesson,
      'topic': topic,
      'description': description,
      'deadlineDate': deadlineDate,
      'deadlineTime': deadlineTime,
      'deadlineforRedo': deadlineforRedo,
      'deadlineforRedoTime': deadlineforRedoTime,
      'isAllowLateSibmission': isAllowLateSibmission,
    };
  }

  @override
  String toString() {
    return '''{'homeworkTypeId': $homeworkTypeId, 'classId': $classId, 'sectionId': $sectionId, 'subjectId': $subjectId, 'lesson': '$lesson', 'topic': '$topic', 'description': '$description', 'deadlineDate':'$deadlineDate', 'deadlineTime': '$deadlineTime', 'deadlineforRedo': $deadlineforRedo, 'deadlineforRedoTime': $deadlineforRedoTime, 'isAllowLateSibmission': $isAllowLateSibmission}''';
  }
}
