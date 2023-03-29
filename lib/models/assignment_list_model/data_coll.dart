import 'dart:convert';

class DataColl {
  int? classId;
  int? sectionId;
  int? assignmentId;
  String? className;
  String? sectionName;
  String? subjectName;
  String? assignmentType;
  String? title;
  String? weblink;
  String? description;
  String? teacherName;
  String? teacherAddress;
  String? teacherContactNo;
  int? noOfAttachment;
  String? attachments;
  DateTime? asignDateTimeAd;
  String? asignDateTimeBs;
  String? deadlineDateAd;
  String? deadlineDateBs;
  String? deadlineTime;
  int? totalStudent;
  int? noOfSubmit;
  int? totalChecked;
  String? assignmentStatus;
  dynamic submitDateTimeAd;
  dynamic submitDateBs;
  int? markScheme;
  double? marks;
  double? obtainMark;
  dynamic obtainGrade;
  int? totalDone;
  int? totalNotDone;
  bool? submissionsRequired;
  dynamic reSubmitStudentAttachments;
  dynamic reSubmitDateTimeAd;
  dynamic reSubmitDateTimeBs;
  dynamic deallineForRedoAd;
  dynamic deadlineForRedoBs;
  dynamic deadlineforRedoTime;
  bool? isAllowLateSibmission;
  String? studentAttachments;
  String? studentNotes;
  String? reStudentNotes;
  String? checkedRemarks;
  String? reCheckedRemarks;
  List<dynamic>? attachmentColl;
  List<dynamic>? studentAttachmentColl;
  List<dynamic>? reStudentAttachmentColl;

  DataColl({
    this.classId,
    this.sectionId,
    this.assignmentId,
    this.className,
    this.sectionName,
    this.subjectName,
    this.assignmentType,
    this.title,
    this.weblink,
    this.description,
    this.teacherName,
    this.teacherAddress,
    this.teacherContactNo,
    this.noOfAttachment,
    this.attachments,
    this.asignDateTimeAd,
    this.asignDateTimeBs,
    this.deadlineDateAd,
    this.deadlineDateBs,
    this.deadlineTime,
    this.totalStudent,
    this.noOfSubmit,
    this.totalChecked,
    this.assignmentStatus,
    this.submitDateTimeAd,
    this.submitDateBs,
    this.markScheme,
    this.marks,
    this.obtainMark,
    this.obtainGrade,
    this.totalDone,
    this.totalNotDone,
    this.submissionsRequired,
    this.reSubmitStudentAttachments,
    this.reSubmitDateTimeAd,
    this.reSubmitDateTimeBs,
    this.deallineForRedoAd,
    this.deadlineForRedoBs,
    this.deadlineforRedoTime,
    this.isAllowLateSibmission,
    this.studentAttachments,
    this.studentNotes,
    this.reStudentNotes,
    this.checkedRemarks,
    this.reCheckedRemarks,
    this.attachmentColl,
    this.studentAttachmentColl,
    this.reStudentAttachmentColl,
  });

  factory DataColl.fromMap(Map<String, dynamic> data) => DataColl(
        classId: data['ClassId'] as int?,
        sectionId: data['SectionId'] as int?,
        assignmentId: data['AssignmentId'] as int?,
        className: data['ClassName'] as String?,
        sectionName: data['SectionName'] as String?,
        subjectName: data['SubjectName'] as String?,
        assignmentType: data['AssignmentType'] as String?,
        title: data['Title'] as String?,
        weblink: data['Weblink'] as String?,
        description: data['Description'] as String?,
        teacherName: data['TeacherName'] as String?,
        teacherAddress: data['TeacherAddress'] as String?,
        teacherContactNo: data['TeacherContactNo'] as String?,
        noOfAttachment: data['NoOfAttachment'] as int?,
        attachments: data['Attachments'] as String?,
        asignDateTimeAd: data['AsignDateTime_AD'] == null
            ? null
            : DateTime.parse(data['AsignDateTime_AD'] as String),
        asignDateTimeBs: data['AsignDateTime_BS'] as String?,
        deadlineDateAd: data['DeadlineDate_AD'] as String?,
        deadlineDateBs: data['DeadlineDate_BS'] as String?,
        deadlineTime: data['DeadlineTime'] as String?,
        totalStudent: data['TotalStudent'] as int?,
        noOfSubmit: data['NoOfSubmit'] as int?,
        totalChecked: data['TotalChecked'] as int?,
        assignmentStatus: data['AssignmentStatus'] as String?,
        submitDateTimeAd: data['SubmitDateTime_AD'] as dynamic,
        submitDateBs: data['SubmitDate_BS'] as dynamic,
        markScheme: data['MarkScheme'] as int?,
        marks: data['Marks'] as double?,
        obtainMark: data['ObtainMark'] as double?,
        obtainGrade: data['ObtainGrade'] as dynamic,
        totalDone: data['TotalDone'] as int?,
        totalNotDone: data['TotalNotDone'] as int?,
        submissionsRequired: data['SubmissionsRequired'] as bool?,
        reSubmitStudentAttachments:
            data['reSubmitStudentAttachments'] as dynamic,
        reSubmitDateTimeAd: data['ReSubmitDateTime_AD'] as dynamic,
        reSubmitDateTimeBs: data['ReSubmitDateTime_BS'] as dynamic,
        deallineForRedoAd: data['DeallineForRedo_AD'] as dynamic,
        deadlineForRedoBs: data['DeadlineForRedo_BS'] as dynamic,
        deadlineforRedoTime: data['DeadlineforRedoTime'] as dynamic,
        isAllowLateSibmission: data['IsAllowLateSibmission'] as bool?,
        studentAttachments: data['StudentAttachments'] as String?,
        studentNotes: data['StudentNotes'] as String?,
        reStudentNotes: data['ReStudentNotes'] as String?,
        checkedRemarks: data['CheckedRemarks'] as String?,
        reCheckedRemarks: data['ReCheckedRemarks'] as String?,
        attachmentColl: data['AttachmentColl'] as List<dynamic>?,
        studentAttachmentColl: data['StudentAttachmentColl'] as List<dynamic>?,
        reStudentAttachmentColl:
            data['reStudentAttachmentColl'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'ClassId': classId,
        'SectionId': sectionId,
        'AssignmentId': assignmentId,
        'ClassName': className,
        'SectionName': sectionName,
        'SubjectName': subjectName,
        'AssignmentType': assignmentType,
        'Title': title,
        'Weblink': weblink,
        'Description': description,
        'TeacherName': teacherName,
        'TeacherAddress': teacherAddress,
        'TeacherContactNo': teacherContactNo,
        'NoOfAttachment': noOfAttachment,
        'Attachments': attachments,
        'AsignDateTime_AD': asignDateTimeAd?.toIso8601String(),
        'AsignDateTime_BS': asignDateTimeBs,
        'DeadlineDate_AD': deadlineDateAd,
        'DeadlineDate_BS': deadlineDateBs,
        'DeadlineTime': deadlineTime,
        'TotalStudent': totalStudent,
        'NoOfSubmit': noOfSubmit,
        'TotalChecked': totalChecked,
        'AssignmentStatus': assignmentStatus,
        'SubmitDateTime_AD': submitDateTimeAd,
        'SubmitDate_BS': submitDateBs,
        'MarkScheme': markScheme,
        'Marks': marks,
        'ObtainMark': obtainMark,
        'ObtainGrade': obtainGrade,
        'TotalDone': totalDone,
        'TotalNotDone': totalNotDone,
        'SubmissionsRequired': submissionsRequired,
        'reSubmitStudentAttachments': reSubmitStudentAttachments,
        'ReSubmitDateTime_AD': reSubmitDateTimeAd,
        'ReSubmitDateTime_BS': reSubmitDateTimeBs,
        'DeallineForRedo_AD': deallineForRedoAd,
        'DeadlineForRedo_BS': deadlineForRedoBs,
        'DeadlineforRedoTime': deadlineforRedoTime,
        'IsAllowLateSibmission': isAllowLateSibmission,
        'StudentAttachments': studentAttachments,
        'StudentNotes': studentNotes,
        'ReStudentNotes': reStudentNotes,
        'CheckedRemarks': checkedRemarks,
        'ReCheckedRemarks': reCheckedRemarks,
        'AttachmentColl': attachmentColl,
        'StudentAttachmentColl': studentAttachmentColl,
        'reStudentAttachmentColl': reStudentAttachmentColl,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DataColl].
  factory DataColl.fromJson(String data) {
    return DataColl.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DataColl] to a JSON string.
  String toJson() => json.encode(toMap());

  DataColl copyWith({
    int? classId,
    int? sectionId,
    int? assignmentId,
    String? className,
    String? sectionName,
    String? subjectName,
    String? assignmentType,
    String? title,
    String? weblink,
    String? description,
    String? teacherName,
    String? teacherAddress,
    String? teacherContactNo,
    int? noOfAttachment,
    String? attachments,
    DateTime? asignDateTimeAd,
    String? asignDateTimeBs,
    String? deadlineDateAd,
    String? deadlineDateBs,
    String? deadlineTime,
    int? totalStudent,
    int? noOfSubmit,
    int? totalChecked,
    String? assignmentStatus,
    dynamic submitDateTimeAd,
    dynamic submitDateBs,
    int? markScheme,
    double? marks,
    double? obtainMark,
    dynamic obtainGrade,
    int? totalDone,
    int? totalNotDone,
    bool? submissionsRequired,
    dynamic reSubmitStudentAttachments,
    dynamic reSubmitDateTimeAd,
    dynamic reSubmitDateTimeBs,
    dynamic deallineForRedoAd,
    dynamic deadlineForRedoBs,
    dynamic deadlineforRedoTime,
    bool? isAllowLateSibmission,
    String? studentAttachments,
    String? studentNotes,
    String? reStudentNotes,
    String? checkedRemarks,
    String? reCheckedRemarks,
    List<dynamic>? attachmentColl,
    List<dynamic>? studentAttachmentColl,
    List<dynamic>? reStudentAttachmentColl,
  }) {
    return DataColl(
      classId: classId ?? this.classId,
      sectionId: sectionId ?? this.sectionId,
      assignmentId: assignmentId ?? this.assignmentId,
      className: className ?? this.className,
      sectionName: sectionName ?? this.sectionName,
      subjectName: subjectName ?? this.subjectName,
      assignmentType: assignmentType ?? this.assignmentType,
      title: title ?? this.title,
      weblink: weblink ?? this.weblink,
      description: description ?? this.description,
      teacherName: teacherName ?? this.teacherName,
      teacherAddress: teacherAddress ?? this.teacherAddress,
      teacherContactNo: teacherContactNo ?? this.teacherContactNo,
      noOfAttachment: noOfAttachment ?? this.noOfAttachment,
      attachments: attachments ?? this.attachments,
      asignDateTimeAd: asignDateTimeAd ?? this.asignDateTimeAd,
      asignDateTimeBs: asignDateTimeBs ?? this.asignDateTimeBs,
      deadlineDateAd: deadlineDateAd ?? this.deadlineDateAd,
      deadlineDateBs: deadlineDateBs ?? this.deadlineDateBs,
      deadlineTime: deadlineTime ?? this.deadlineTime,
      totalStudent: totalStudent ?? this.totalStudent,
      noOfSubmit: noOfSubmit ?? this.noOfSubmit,
      totalChecked: totalChecked ?? this.totalChecked,
      assignmentStatus: assignmentStatus ?? this.assignmentStatus,
      submitDateTimeAd: submitDateTimeAd ?? this.submitDateTimeAd,
      submitDateBs: submitDateBs ?? this.submitDateBs,
      markScheme: markScheme ?? this.markScheme,
      marks: marks ?? this.marks,
      obtainMark: obtainMark ?? this.obtainMark,
      obtainGrade: obtainGrade ?? this.obtainGrade,
      totalDone: totalDone ?? this.totalDone,
      totalNotDone: totalNotDone ?? this.totalNotDone,
      submissionsRequired: submissionsRequired ?? this.submissionsRequired,
      reSubmitStudentAttachments:
          reSubmitStudentAttachments ?? this.reSubmitStudentAttachments,
      reSubmitDateTimeAd: reSubmitDateTimeAd ?? this.reSubmitDateTimeAd,
      reSubmitDateTimeBs: reSubmitDateTimeBs ?? this.reSubmitDateTimeBs,
      deallineForRedoAd: deallineForRedoAd ?? this.deallineForRedoAd,
      deadlineForRedoBs: deadlineForRedoBs ?? this.deadlineForRedoBs,
      deadlineforRedoTime: deadlineforRedoTime ?? this.deadlineforRedoTime,
      isAllowLateSibmission:
          isAllowLateSibmission ?? this.isAllowLateSibmission,
      studentAttachments: studentAttachments ?? this.studentAttachments,
      studentNotes: studentNotes ?? this.studentNotes,
      reStudentNotes: reStudentNotes ?? this.reStudentNotes,
      checkedRemarks: checkedRemarks ?? this.checkedRemarks,
      reCheckedRemarks: reCheckedRemarks ?? this.reCheckedRemarks,
      attachmentColl: attachmentColl ?? this.attachmentColl,
      studentAttachmentColl:
          studentAttachmentColl ?? this.studentAttachmentColl,
      reStudentAttachmentColl:
          reStudentAttachmentColl ?? this.reStudentAttachmentColl,
    );
  }
}
