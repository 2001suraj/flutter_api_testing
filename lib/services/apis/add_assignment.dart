// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/data_add_assignement_model/data_add_assignment_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class AddAssignment {
  Future<String?> getAddAssignment() async {
    try {
      String data = DataAddAssignmentModel(
              assignmentTypeId: 1,
              classId: 4,
              deadlineDate: '2023-03-29',
              deadlineTime: '2023-03-30T10:00',
              deadlineforRedo: null,
              deadlineforRedoTime: null,
              description: ' ok mayn  description',
              isAllowLateSibmission: true,
              markScheme: 1,
              marks: 40,
              sectionId: 2,
              subjectId: 2,
              title: 'hello world',
              weblink: 'weblink')
          .toString();
      FormData formData = FormData.fromMap({'paraDataColl': data});
      File file = File(
          '/data/user/0/com.example.flutter_api_testing/cache/3a0f44cf-3b95-4d05-8ab7-cb25cf1ffcb1/20230315_114137.jpg');
      formData.files
          .add(MapEntry("file1", await MultipartFile.fromFile(file.path)));
      final response = await dioClientWithNoAuth.post(ApiEndPoint.addAssignment,
          options: Options(
            headers: {
              'Content-Type': 'multipart/form-data',
              'Authorization':
                  'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
            },
          ),
          data: formData);

      if (response.statusCode == 200) {
        print('assignment added ===== >>  ' + response.data['ResponseMSG']);
        print(response.data['IsSuccess']);
        return response.data['ResponseMSG'];
      } else {}
    } on DioError catch (e) {
      log(e.response!.data.toString());
      log(e.toString());
    }
    return null;
  }
}
