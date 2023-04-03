import 'dart:convert';

class DataColl {
  int? classId;
  dynamic sectionId;
  int? homeWorkId;
  String? className;
  String? sectionName;
  String? subjectName;
  String? homeWorkType;
  String? topic;
  String? lession;
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
  String? homeWorkStatus;
  dynamic submitDateTimeAd;
  dynamic submitDateBs;
  String? deallineForRedoAd;
  String? deadlineForRedoBs;
  String? deadlineforRedoTime;
  bool? isAllowLateSibmission;
  String? studentAttachments;
  String? studentNotes;
  String? reStudentNotes;
  String? checkedRemarks;
  String? reCheckedRemarks;
  List<dynamic>? attachmentColl;
  dynamic studentAttachmentColl;
  dynamic reStudentAttachmentColl;
  int? totalDone;
  int? totalNotDone;
  bool? submissionsRequired;
  String? reSubmitStudentAttachments;
  dynamic reSubmitDateTimeAd;
  dynamic reSubmitDateTimeBs;

  DataColl({
    this.classId,
    this.sectionId,
    this.homeWorkId,
    this.className,
    this.sectionName,
    this.subjectName,
    this.homeWorkType,
    this.topic,
    this.lession,
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
    this.homeWorkStatus,
    this.submitDateTimeAd,
    this.submitDateBs,
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
    this.totalDone,
    this.totalNotDone,
    this.submissionsRequired,
    this.reSubmitStudentAttachments,
    this.reSubmitDateTimeAd,
    this.reSubmitDateTimeBs,
  });

  factory DataColl.fromMap(Map<String, dynamic> data) => DataColl(
        classId: data['ClassId'] as int?,
        sectionId: data['SectionId'] as dynamic,
        homeWorkId: data['HomeWorkId'] as int?,
        className: data['ClassName'] as String?,
        sectionName: data['SectionName'] as String?,
        subjectName: data['SubjectName'] as String?,
        homeWorkType: data['HomeWorkType'] as String?,
        topic: data['Topic'] as String?,
        lession: data['Lession'] as String?,
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
        homeWorkStatus: data['HomeWorkStatus'] as String?,
        submitDateTimeAd: data['SubmitDateTime_AD'] as dynamic,
        submitDateBs: data['SubmitDate_BS'] as dynamic,
        deallineForRedoAd: data['DeallineForRedo_AD'] as String?,
        deadlineForRedoBs: data['DeadlineForRedo_BS'] as String?,
        deadlineforRedoTime: data['DeadlineforRedoTime'] as String?,
        isAllowLateSibmission: data['IsAllowLateSibmission'] as bool?,
        studentAttachments: data['StudentAttachments'] as String?,
        studentNotes: data['StudentNotes'] as String?,
        reStudentNotes: data['ReStudentNotes'] as String?,
        checkedRemarks: data['CheckedRemarks'] as String?,
        reCheckedRemarks: data['ReCheckedRemarks'] as String?,
        attachmentColl: data['AttachmentColl'] as List<dynamic>?,
        studentAttachmentColl: data['StudentAttachmentColl'] as dynamic,
        reStudentAttachmentColl: data['reStudentAttachmentColl'] as dynamic,
        totalDone: data['TotalDone'] as int?,
        totalNotDone: data['TotalNotDone'] as int?,
        submissionsRequired: data['SubmissionsRequired'] as bool?,
        reSubmitStudentAttachments:
            data['reSubmitStudentAttachments'] as String?,
        reSubmitDateTimeAd: data['ReSubmitDateTime_AD'] as dynamic,
        reSubmitDateTimeBs: data['ReSubmitDateTime_BS'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'ClassId': classId,
        'SectionId': sectionId,
        'HomeWorkId': homeWorkId,
        'ClassName': className,
        'SectionName': sectionName,
        'SubjectName': subjectName,
        'HomeWorkType': homeWorkType,
        'Topic': topic,
        'Lession': lession,
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
        'HomeWorkStatus': homeWorkStatus,
        'SubmitDateTime_AD': submitDateTimeAd,
        'SubmitDate_BS': submitDateBs,
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
        'TotalDone': totalDone,
        'TotalNotDone': totalNotDone,
        'SubmissionsRequired': submissionsRequired,
        'reSubmitStudentAttachments': reSubmitStudentAttachments,
        'ReSubmitDateTime_AD': reSubmitDateTimeAd,
        'ReSubmitDateTime_BS': reSubmitDateTimeBs,
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
}
