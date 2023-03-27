import 'dart:convert';

class EmpColl {
  dynamic staffHierarchyId;
  String? fullName;
  String? designation;
  String? contactNo;
  String? email;
  String? message;
  String? imagePath;
  String? department;
  int? orderNo;
  String? qualification;
  String? responseMsg;
  bool? isSuccess;
  int? rId;
  int? cUserId;
  String? responseId;
  int? entityId;
  int? errorNumber;
  String? cUserName;
  String? expireDateTime;

  EmpColl({
    this.staffHierarchyId,
    this.fullName,
    this.designation,
    this.contactNo,
    this.email,
    this.message,
    this.imagePath,
    this.department,
    this.orderNo,
    this.qualification,
    this.responseMsg,
    this.isSuccess,
    this.rId,
    this.cUserId,
    this.responseId,
    this.entityId,
    this.errorNumber,
    this.cUserName,
    this.expireDateTime,
  });

  factory EmpColl.fromMap(Map<String, dynamic> data) => EmpColl(
        staffHierarchyId: data['StaffHierarchyId'] as dynamic,
        fullName: data['FullName'] as String?,
        designation: data['Designation'] as String?,
        contactNo: data['ContactNo'] as String?,
        email: data['Email'] as String?,
        message: data['Message'] as String?,
        imagePath: data['ImagePath'] as String?,
        department: data['Department'] as String?,
        orderNo: data['OrderNo'] as int?,
        qualification: data['Qualification'] as String?,
        responseMsg: data['ResponseMSG'] as String?,
        isSuccess: data['IsSuccess'] as bool?,
        rId: data['RId'] as int?,
        cUserId: data['CUserId'] as int?,
        responseId: data['ResponseId'] as String?,
        entityId: data['EntityId'] as int?,
        errorNumber: data['ErrorNumber'] as int?,
        cUserName: data['CUserName'] as String?,
        expireDateTime: data['ExpireDateTime'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'StaffHierarchyId': staffHierarchyId,
        'FullName': fullName,
        'Designation': designation,
        'ContactNo': contactNo,
        'Email': email,
        'Message': message,
        'ImagePath': imagePath,
        'Department': department,
        'OrderNo': orderNo,
        'Qualification': qualification,
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
        'RId': rId,
        'CUserId': cUserId,
        'ResponseId': responseId,
        'EntityId': entityId,
        'ErrorNumber': errorNumber,
        'CUserName': cUserName,
        'ExpireDateTime': expireDateTime,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [EmpColl].
  factory EmpColl.fromJson(String data) {
    return EmpColl.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EmpColl] to a JSON string.
  String toJson() => json.encode(toMap());

  EmpColl copyWith({
    dynamic staffHierarchyId,
    String? fullName,
    String? designation,
    String? contactNo,
    String? email,
    String? message,
    String? imagePath,
    String? department,
    int? orderNo,
    String? qualification,
    String? responseMsg,
    bool? isSuccess,
    int? rId,
    int? cUserId,
    String? responseId,
    int? entityId,
    int? errorNumber,
    String? cUserName,
    String? expireDateTime,
  }) {
    return EmpColl(
      staffHierarchyId: staffHierarchyId ?? this.staffHierarchyId,
      fullName: fullName ?? this.fullName,
      designation: designation ?? this.designation,
      contactNo: contactNo ?? this.contactNo,
      email: email ?? this.email,
      message: message ?? this.message,
      imagePath: imagePath ?? this.imagePath,
      department: department ?? this.department,
      orderNo: orderNo ?? this.orderNo,
      qualification: qualification ?? this.qualification,
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
      rId: rId ?? this.rId,
      cUserId: cUserId ?? this.cUserId,
      responseId: responseId ?? this.responseId,
      entityId: entityId ?? this.entityId,
      errorNumber: errorNumber ?? this.errorNumber,
      cUserName: cUserName ?? this.cUserName,
      expireDateTime: expireDateTime ?? this.expireDateTime,
    );
  }
}
