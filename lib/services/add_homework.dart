import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/add_homework_model/add_homework_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class AddHomework {
  Future<void> addHomework() async {
    try {
      String data = AddHomeworkModel(
          homeworkTypeId: 1,
          classId: 4,
          sectionId: 2,
          subjectId: 2,
          lesson: 'lesson',
          topic: 'topic',
          description: 'description',
          deadlineDate: '2023-05-20',
          deadlineTime: '2023-05-25T10:00',
          deadlineforRedo: null,
          deadlineforRedoTime: null,
          isAllowLateSibmission: true).toString();




      FormData formData = FormData.fromMap({'paraDataColl': data});

      var response = await dioClientWithNoAuth.post(ApiEndPoint.addHomeWork,
          options: Options(headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
          }),
          data: formData);
      if (response.statusCode == 200) {
        print('homework Added ===== >>  ' + response.data['ResponseMSG']);
        print(response.data['IsSuccess']);
        return response.data['ResponseMSG'];
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
