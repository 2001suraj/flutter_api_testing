import 'dart:convert';

class ImageColl {
  int? id;
  String? extension;
  String? name;
  String? logDateTime;
  dynamic data;
  String? docPath;
  dynamic documentTypeId;
  dynamic description;
  dynamic paraName;
  String? documentTypeName;
  String? base64String;
  String? docFullPath;

  ImageColl({
    this.id,
    this.extension,
    this.name,
    this.logDateTime,
    this.data,
    this.docPath,
    this.documentTypeId,
    this.description,
    this.paraName,
    this.documentTypeName,
    this.base64String,
    this.docFullPath,
  });

  factory ImageColl.fromMap(Map<String, dynamic> data) => ImageColl(
        id: data['Id'] as int?,
        extension: data['Extension'] as String?,
        name: data['Name'] as String?,
        logDateTime: data['LogDateTime'] as String?,
        data: data['Data'] as dynamic,
        docPath: data['DocPath'] as String?,
        documentTypeId: data['DocumentTypeId'] as dynamic,
        description: data['Description'] as dynamic,
        paraName: data['ParaName'] as dynamic,
        documentTypeName: data['DocumentTypeName'] as String?,
        base64String: data['Base64String'] as String?,
        docFullPath: data['DocFullPath'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'Extension': extension,
        'Name': name,
        'LogDateTime': logDateTime,
        'Data': data,
        'DocPath': docPath,
        'DocumentTypeId': documentTypeId,
        'Description': description,
        'ParaName': paraName,
        'DocumentTypeName': documentTypeName,
        'Base64String': base64String,
        'DocFullPath': docFullPath,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ImageColl].
  factory ImageColl.fromJson(String data) {
    return ImageColl.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ImageColl] to a JSON string.
  String toJson() => json.encode(toMap());

  ImageColl copyWith({
    int? id,
    String? extension,
    String? name,
    String? logDateTime,
    dynamic data,
    String? docPath,
    dynamic documentTypeId,
    dynamic description,
    dynamic paraName,
    String? documentTypeName,
    String? base64String,
    String? docFullPath,
  }) {
    return ImageColl(
      id: id ?? this.id,
      extension: extension ?? this.extension,
      name: name ?? this.name,
      logDateTime: logDateTime ?? this.logDateTime,
      data: data ?? this.data,
      docPath: docPath ?? this.docPath,
      documentTypeId: documentTypeId ?? this.documentTypeId,
      description: description ?? this.description,
      paraName: paraName ?? this.paraName,
      documentTypeName: documentTypeName ?? this.documentTypeName,
      base64String: base64String ?? this.base64String,
      docFullPath: docFullPath ?? this.docFullPath,
    );
  }
}
