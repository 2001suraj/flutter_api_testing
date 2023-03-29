import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class LeaveRequest {
  Future<String?> getLeaveRequest() async {
    try {
      var dat = ''' {
          'LeaveTypeId': 1,
          'LeaveDuration': 1,
          'DateFrom': "2023-03-29",
          'DateTo': "2023-03-30",
          'LeaveDuration': 1,
          'LeavePeriod': 1,
          'Lat': 1,
          'Lan': 1,
          'LeaveHours': 0,
          'Remarks': "reasong for leave"
          }
         ''';
      FormData formData = FormData.fromMap({'paraDataColl': dat});
      File file = File(
         '/data/user/0/com.example.flutter_api_testing/cache/92201149-8a13-4643-9b86-872b3967f3f2/20230315_114137.jpg');
      formData.files
          .add(MapEntry("file0", await MultipartFile.fromFile(file.path)));

      final response = await dioClientWithNoAuth.post(
        ApiEndPoint.addLeaveRequest,
        options: Options(headers: {
          'Content-type': 'multipart/form-data',

          'Authorization':
              'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
          // 'Bearer $token'
        }),
        data: formData,
      );
      if (response.statusCode == 200) {
        // var data = json.decode(response.data);
        print('leave request =====> ' + response.data.toString());

        return response.data["ResponseMSG"];
      }
    } on DioError catch (e) {
      log(e.toString());
    }
  }
}
