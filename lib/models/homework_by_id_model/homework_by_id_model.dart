import 'dart:convert';

class HomeworkByIdModel {
  String? homeWorkType;
  DateTime? assignDateTimeAd;
  String? assignDateBs;
  String? deadlineDateAd;
  String? deadlineDateBs;
  String? deadlineTime;
  String? topic;
  String? description;
  int? studentId;
  int? autoNumber;
  String? name;
  String? className;
  String? sectionname;
  int? rollNo;
  String? address;
  String? fatherName;
  String? fContactNo;
  String? photoPath;
  int? noOfStudent;
  String? submitStatus;
  String? checkStatus;
  int? noOfSubmit;
  int? noOfDone;
  int? noOfReDo;
  int? totalChecked;
  int? noOfAttachment;
  String? attachments;
  String? studentAttachments;
  String? studentNotes;
  dynamic submitDateTimeAd;
  String? submitDateBs;
  dynamic reSubmitDateTimeAd;
  String? reSubmitDateBs;
  dynamic checkedDateTimeAd;
  String? checkeDateBs;
  dynamic reCheckedDateTimeAd;
  String? reCheckeDateBs;
  String? checkedBy;
  String? status;
  String? checkedRemarks;
  String? reCheckedRemarks;
  String? userName;
  String? subjectName;
  String? regNo;
  String? reNotes;
  dynamic reSubmitStudentAttachments;
  String? lesson;

  HomeworkByIdModel({
    this.homeWorkType,
    this.assignDateTimeAd,
    this.assignDateBs,
    this.deadlineDateAd,
    this.deadlineDateBs,
    this.deadlineTime,
    this.topic,
    this.description,
    this.studentId,
    this.autoNumber,
    this.name,
    this.className,
    this.sectionname,
    this.rollNo,
    this.address,
    this.fatherName,
    this.fContactNo,
    this.photoPath,
    this.noOfStudent,
    this.submitStatus,
    this.checkStatus,
    this.noOfSubmit,
    this.noOfDone,
    this.noOfReDo,
    this.totalChecked,
    this.noOfAttachment,
    this.attachments,
    this.studentAttachments,
    this.studentNotes,
    this.submitDateTimeAd,
    this.submitDateBs,
    this.reSubmitDateTimeAd,
    this.reSubmitDateBs,
    this.checkedDateTimeAd,
    this.checkeDateBs,
    this.reCheckedDateTimeAd,
    this.reCheckeDateBs,
    this.checkedBy,
    this.status,
    this.checkedRemarks,
    this.reCheckedRemarks,
    this.userName,
    this.subjectName,
    this.regNo,
    this.reNotes,
    this.reSubmitStudentAttachments,
    this.lesson,
  });

  factory HomeworkByIdModel.fromMap(Map<String, dynamic> data) {
    return HomeworkByIdModel(
      homeWorkType: data['HomeWorkType'] as String?,
      assignDateTimeAd: data['AssignDateTime_AD'] == null
          ? null
          : DateTime.parse(data['AssignDateTime_AD'] as String),
      assignDateBs: data['AssignDate_BS'] as String?,
      deadlineDateAd: data['DeadlineDate_AD'] as String?,
      deadlineDateBs: data['DeadlineDate_BS'] as String?,
      deadlineTime: data['DeadlineTime'] as String?,
      topic: data['Topic'] as String?,
      description: data['Description'] as String?,
      studentId: data['StudentId'] as int?,
      autoNumber: data['AutoNumber'] as int?,
      name: data['Name'] as String?,
      className: data['ClassName'] as String?,
      sectionname: data['Sectionname'] as String?,
      rollNo: data['RollNo'] as int?,
      address: data['Address'] as String?,
      fatherName: data['FatherName'] as String?,
      fContactNo: data['F_ContactNo'] as String?,
      photoPath: data['PhotoPath'] as String?,
      noOfStudent: data['NoOfStudent'] as int?,
      submitStatus: data['SubmitStatus'] as String?,
      checkStatus: data['CheckStatus'] as String?,
      noOfSubmit: data['NoOfSubmit'] as int?,
      noOfDone: data['NoOfDone'] as int?,
      noOfReDo: data['NoOfReDo'] as int?,
      totalChecked: data['TotalChecked'] as int?,
      noOfAttachment: data['NoOfAttachment'] as int?,
      attachments: data['Attachments'] as String?,
      studentAttachments: data['StudentAttachments'] as String?,
      studentNotes: data['StudentNotes'] as String?,
      submitDateTimeAd: data['SubmitDateTime_AD'] as dynamic,
      submitDateBs: data['SubmitDate_BS'] as String?,
      reSubmitDateTimeAd: data['ReSubmitDateTime_AD'] as dynamic,
      reSubmitDateBs: data['ReSubmitDate_BS'] as String?,
      checkedDateTimeAd: data['CheckedDateTime_AD'] as dynamic,
      checkeDateBs: data['CheckeDate_BS'] as String?,
      reCheckedDateTimeAd: data['ReCheckedDateTime_AD'] as dynamic,
      reCheckeDateBs: data['ReCheckeDate_BS'] as String?,
      checkedBy: data['CheckedBy'] as String?,
      status: data['Status'] as String?,
      checkedRemarks: data['CheckedRemarks'] as String?,
      reCheckedRemarks: data['ReCheckedRemarks'] as String?,
      userName: data['UserName'] as String?,
      subjectName: data['SubjectName'] as String?,
      regNo: data['RegNo'] as String?,
      reNotes: data['ReNotes'] as String?,
      reSubmitStudentAttachments: data['reSubmitStudentAttachments'] as dynamic,
      lesson: data['Lesson'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'HomeWorkType': homeWorkType,
        'AssignDateTime_AD': assignDateTimeAd?.toIso8601String(),
        'AssignDate_BS': assignDateBs,
        'DeadlineDate_AD': deadlineDateAd,
        'DeadlineDate_BS': deadlineDateBs,
        'DeadlineTime': deadlineTime,
        'Topic': topic,
        'Description': description,
        'StudentId': studentId,
        'AutoNumber': autoNumber,
        'Name': name,
        'ClassName': className,
        'Sectionname': sectionname,
        'RollNo': rollNo,
        'Address': address,
        'FatherName': fatherName,
        'F_ContactNo': fContactNo,
        'PhotoPath': photoPath,
        'NoOfStudent': noOfStudent,
        'SubmitStatus': submitStatus,
        'CheckStatus': checkStatus,
        'NoOfSubmit': noOfSubmit,
        'NoOfDone': noOfDone,
        'NoOfReDo': noOfReDo,
        'TotalChecked': totalChecked,
        'NoOfAttachment': noOfAttachment,
        'Attachments': attachments,
        'StudentAttachments': studentAttachments,
        'StudentNotes': studentNotes,
        'SubmitDateTime_AD': submitDateTimeAd,
        'SubmitDate_BS': submitDateBs,
        'ReSubmitDateTime_AD': reSubmitDateTimeAd,
        'ReSubmitDate_BS': reSubmitDateBs,
        'CheckedDateTime_AD': checkedDateTimeAd,
        'CheckeDate_BS': checkeDateBs,
        'ReCheckedDateTime_AD': reCheckedDateTimeAd,
        'ReCheckeDate_BS': reCheckeDateBs,
        'CheckedBy': checkedBy,
        'Status': status,
        'CheckedRemarks': checkedRemarks,
        'ReCheckedRemarks': reCheckedRemarks,
        'UserName': userName,
        'SubjectName': subjectName,
        'RegNo': regNo,
        'ReNotes': reNotes,
        'reSubmitStudentAttachments': reSubmitStudentAttachments,
        'Lesson': lesson,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HomeworkByIdModel].
  factory HomeworkByIdModel.fromJson(String data) {
    return HomeworkByIdModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [HomeworkByIdModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
