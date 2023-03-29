import 'dart:convert';

class ClassScheduleModel {
  int? shiftId;
  String? shiftName;
  String? shiftStartTime;
  String? shiftEndTime;
  int? noOfBreak;
  int? classId;
  int? sectionId;
  String? className;
  String? sectionName;
  int? dayId;
  int? period;
  String? startTime;
  String? endTime;
  int? subjectId;
  String? subjectName;
  String? teacherName;
  String? teacherContactNo;
  String? teacherAddress;
  int? duration;
  String? forType;
  dynamic teacherPhotoPath;
  String? sectionIdColl;
  String? level;
  String? faculty;
  String? semester;
  String? classYear;
  String? batch;

  ClassScheduleModel({
    this.shiftId,
    this.shiftName,
    this.shiftStartTime,
    this.shiftEndTime,
    this.noOfBreak,
    this.classId,
    this.sectionId,
    this.className,
    this.sectionName,
    this.dayId,
    this.period,
    this.startTime,
    this.endTime,
    this.subjectId,
    this.subjectName,
    this.teacherName,
    this.teacherContactNo,
    this.teacherAddress,
    this.duration,
    this.forType,
    this.teacherPhotoPath,
    this.sectionIdColl,
    this.level,
    this.faculty,
    this.semester,
    this.classYear,
    this.batch,
  });

  factory ClassScheduleModel.fromMap(Map<String, dynamic> data) {
    return ClassScheduleModel(
      shiftId: data['ShiftId'] as int?,
      shiftName: data['ShiftName'] as String?,
      shiftStartTime: data['ShiftStartTime'] as String?,
      shiftEndTime: data['ShiftEndTime'] as String?,
      noOfBreak: data['NoOfBreak'] as int?,
      classId: data['ClassId'] as int?,
      sectionId: data['SectionId'] as int?,
      className: data['ClassName'] as String?,
      sectionName: data['SectionName'] as String?,
      dayId: data['DayId'] as int?,
      period: data['Period'] as int?,
      startTime: data['StartTime'] as String?,
      endTime: data['EndTime'] as String?,
      subjectId: data['SubjectId'] as int?,
      subjectName: data['SubjectName'] as String?,
      teacherName: data['TeacherName'] as String?,
      teacherContactNo: data['TeacherContactNo'] as String?,
      teacherAddress: data['TeacherAddress'] as String?,
      duration: data['Duration'] as int?,
      forType: data['ForType'] as String?,
      teacherPhotoPath: data['TeacherPhotoPath'] as dynamic,
      sectionIdColl: data['SectionIdColl'] as String?,
      level: data['Level'] as String?,
      faculty: data['Faculty'] as String?,
      semester: data['Semester'] as String?,
      classYear: data['ClassYear'] as String?,
      batch: data['Batch'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'ShiftId': shiftId,
        'ShiftName': shiftName,
        'ShiftStartTime': shiftStartTime,
        'ShiftEndTime': shiftEndTime,
        'NoOfBreak': noOfBreak,
        'ClassId': classId,
        'SectionId': sectionId,
        'ClassName': className,
        'SectionName': sectionName,
        'DayId': dayId,
        'Period': period,
        'StartTime': startTime,
        'EndTime': endTime,
        'SubjectId': subjectId,
        'SubjectName': subjectName,
        'TeacherName': teacherName,
        'TeacherContactNo': teacherContactNo,
        'TeacherAddress': teacherAddress,
        'Duration': duration,
        'ForType': forType,
        'TeacherPhotoPath': teacherPhotoPath,
        'SectionIdColl': sectionIdColl,
        'Level': level,
        'Faculty': faculty,
        'Semester': semester,
        'ClassYear': classYear,
        'Batch': batch,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ClassScheduleModel].
  factory ClassScheduleModel.fromJson(String data) {
    return ClassScheduleModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ClassScheduleModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
