import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class SubmitHomework {
  Future<void> submitHomework() async {
    try {
      String data = '''{HomeWorkId:14,Notes:'Test notes' }''';

      FormData formData = FormData.fromMap({'paraDataColl': data});
      File file = File(
          '/data/user/0/com.example.flutter_api_testing/cache/3a0f44cf-3b95-4d05-8ab7-cb25cf1ffcb1/20230315_114137.jpg');
      formData.files
          .add(MapEntry("file1", await MultipartFile.fromFile(file.path)));

      var response = await dioClientWithNoAuth.post(ApiEndPoint.submitHomework,
          options: Options(headers: {
            'Content-Type': 'multipart/form-data',
            'Authorization':
                'Bearer ${await LocalStorage().gettoken(value: 'token')}',
          }),
          data: formData);
      if (response.statusCode == 200) {
        print('homework submitted ===== >>  ' + response.data['ResponseMSG']);
        print(response.data['IsSuccess']);
        return response.data['ResponseMSG'];
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
