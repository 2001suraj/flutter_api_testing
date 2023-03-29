import 'dart:convert';

class GetMyRemarkModel {
  int? employeeId;
  int? userId;
  String? code;
  String? name;
  String? department;
  String? designation;
  int? enrollNo;
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

  GetMyRemarkModel({
    this.employeeId,
    this.userId,
    this.code,
    this.name,
    this.department,
    this.designation,
    this.enrollNo,
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

  factory GetMyRemarkModel.fromMap(Map<String, dynamic> data) {
    return GetMyRemarkModel(
      employeeId: data['EmployeeId'] as int?,
      userId: data['UserId'] as int?,
      code: data['Code'] as String?,
      name: data['Name'] as String?,
      department: data['Department'] as String?,
      designation: data['Designation'] as String?,
      enrollNo: data['EnrollNo'] as int?,
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
        'EmployeeId': employeeId,
        'UserId': userId,
        'Code': code,
        'Name': name,
        'Department': department,
        'Designation': designation,
        'EnrollNo': enrollNo,
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
  /// Parses the string and returns the resulting Json object as [GetMyRemarkModel].
  factory GetMyRemarkModel.fromJson(String data) {
    return GetMyRemarkModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GetMyRemarkModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
