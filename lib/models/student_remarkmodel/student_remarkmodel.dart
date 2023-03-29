import 'dart:convert';

class StudentRemarkmodel {
  int? studentId;
  int? userId;
  String? regNo;
  String? name;
  String? className;
  dynamic sectionName;
  int? rollNo;
  String? fatherName;
  String? contactNo;
  String? forDate;
  String? forMiti;
  String? remarsType;
  String? remarks;
  dynamic filePath;
  String? userName;
  dynamic userPhotoPath;
  String? remarksFor;
  double? point;
  int? ny;
  String? nm;
  int? nd;
  DateTime? logDate;
  String? logMiti;
  String? monthName;

  StudentRemarkmodel({
    this.studentId,
    this.userId,
    this.regNo,
    this.name,
    this.className,
    this.sectionName,
    this.rollNo,
    this.fatherName,
    this.contactNo,
    this.forDate,
    this.forMiti,
    this.remarsType,
    this.remarks,
    this.filePath,
    this.userName,
    this.userPhotoPath,
    this.remarksFor,
    this.point,
    this.ny,
    this.nm,
    this.nd,
    this.logDate,
    this.logMiti,
    this.monthName,
  });

  factory StudentRemarkmodel.fromMap(Map<String, dynamic> data) {
    return StudentRemarkmodel(
      studentId: data['StudentId'] as int?,
      userId: data['UserId'] as int?,
      regNo: data['RegNo'] as String?,
      name: data['Name'] as String?,
      className: data['ClassName'] as String?,
      sectionName: data['SectionName'] as dynamic,
      rollNo: data['RollNo'] as int?,
      fatherName: data['FatherName'] as String?,
      contactNo: data['ContactNo'] as String?,
      forDate: data['ForDate'] as String?,
      forMiti: data['ForMiti'] as String?,
      remarsType: data['RemarsType'] as String?,
      remarks: data['Remarks'] as String?,
      filePath: data['FilePath'] as dynamic,
      userName: data['UserName'] as String?,
      userPhotoPath: data['UserPhotoPath'] as dynamic,
      remarksFor: data['RemarksFor'] as String?,
      point: data['Point'] as double?,
      ny: data['NY'] as int?,
      nm: data['NM'] as String?,
      nd: data['ND'] as int?,
      logDate: data['LogDate'] == null
          ? null
          : DateTime.parse(data['LogDate'] as String),
      logMiti: data['LogMiti'] as String?,
      monthName: data['MonthName'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'StudentId': studentId,
        'UserId': userId,
        'RegNo': regNo,
        'Name': name,
        'ClassName': className,
        'SectionName': sectionName,
        'RollNo': rollNo,
        'FatherName': fatherName,
        'ContactNo': contactNo,
        'ForDate': forDate,
        'ForMiti': forMiti,
        'RemarsType': remarsType,
        'Remarks': remarks,
        'FilePath': filePath,
        'UserName': userName,
        'UserPhotoPath': userPhotoPath,
        'RemarksFor': remarksFor,
        'Point': point,
        'NY': ny,
        'NM': nm,
        'ND': nd,
        'LogDate': logDate?.toIso8601String(),
        'LogMiti': logMiti,
        'MonthName': monthName,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [StudentRemarkmodel].
  factory StudentRemarkmodel.fromJson(String data) {
    return StudentRemarkmodel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [StudentRemarkmodel] to a JSON string.
  String toJson() => json.encode(toMap());

  StudentRemarkmodel copyWith({
    int? studentId,
    int? userId,
    String? regNo,
    String? name,
    String? className,
    dynamic sectionName,
    int? rollNo,
    String? fatherName,
    String? contactNo,
    String? forDate,
    String? forMiti,
    String? remarsType,
    String? remarks,
    dynamic filePath,
    String? userName,
    dynamic userPhotoPath,
    String? remarksFor,
    double? point,
    int? ny,
    String? nm,
    int? nd,
    DateTime? logDate,
    String? logMiti,
    String? monthName,
  }) {
    return StudentRemarkmodel(
      studentId: studentId ?? this.studentId,
      userId: userId ?? this.userId,
      regNo: regNo ?? this.regNo,
      name: name ?? this.name,
      className: className ?? this.className,
      sectionName: sectionName ?? this.sectionName,
      rollNo: rollNo ?? this.rollNo,
      fatherName: fatherName ?? this.fatherName,
      contactNo: contactNo ?? this.contactNo,
      forDate: forDate ?? this.forDate,
      forMiti: forMiti ?? this.forMiti,
      remarsType: remarsType ?? this.remarsType,
      remarks: remarks ?? this.remarks,
      filePath: filePath ?? this.filePath,
      userName: userName ?? this.userName,
      userPhotoPath: userPhotoPath ?? this.userPhotoPath,
      remarksFor: remarksFor ?? this.remarksFor,
      point: point ?? this.point,
      ny: ny ?? this.ny,
      nm: nm ?? this.nm,
      nd: nd ?? this.nd,
      logDate: logDate ?? this.logDate,
      logMiti: logMiti ?? this.logMiti,
      monthName: monthName ?? this.monthName,
    );
  }
}
