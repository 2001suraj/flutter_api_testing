// ignore_for_file: public_member_api_docs, sort_constructors_first

class DataAddAssignmentModel {
  int? assignmentTypeId;
  int? classId;
  int? sectionId;
  int? subjectId;
  String? title;
  String? weblink;
  String? description;
  String? deadlineDate;
  String? deadlineTime;
  String? deadlineforRedo;
  String? deadlineforRedoTime;
  bool isAllowLateSibmission;
  int? marks;
  int? markScheme;

  DataAddAssignmentModel({
    required this.assignmentTypeId,
    required this.classId,
    required this.deadlineDate,
    required this.deadlineTime,
    required this.deadlineforRedo,
    required this.deadlineforRedoTime,
    required this.description,
    required this.isAllowLateSibmission,
    required this.markScheme,
    required this.marks,
    required this.sectionId,
    required this.subjectId,
    required this.title,
    required this.weblink,
  });

  @override
  String toString() {
    return '''{'assignmentTypeId': $assignmentTypeId,'classId': $classId,'deadlineDate': '$deadlineDate','deadlineTime': '$deadlineTime','deadlineforRedo': $deadlineforRedo,'deadlineforRedoTime': $deadlineforRedoTime,'description': '$description','isAllowLateSibmission': $isAllowLateSibmission,'markScheme': $markScheme,'marks': $marks,'sectionId': $sectionId,'subjectId': $subjectId,'title': '$title','weblink': '$weblink'}''';
  }
}
