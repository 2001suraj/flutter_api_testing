import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/student_remarkmodel/student_remarkmodel.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

import '../../dio/dio_client.dart';

class StudentRemark {
  Future<List<StudentRemarkmodel>?> studentRemark() async {
    try {
      dynamic data;

      final response = await dioClientWithNoAuth.post(
        ApiEndPoint.generalStudentRemarks,
        options: Options(headers: {
          'Content-type': 'application/json',
          // 'Accept': 'application/json',
          'Authorization':
              'Bearer ${await LocalStorage().gettoken(value: 'token')}',
        }),
      );
      // print('token =========>>> ' +
      //     await LocalStorage().gettoken(value: 'token'));
      if (response.statusCode == 200) {
        var data = (response.data as List)
            .map((data) => StudentRemarkmodel.fromMap(data))
            .toList();

        return data;
      } else {}
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}

// get \leave type
// get / leave request
