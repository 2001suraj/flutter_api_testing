import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/leave_type_model/leave_type_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class LeaveType {
  Future<List<LeaveTypeModel>?> getLeaveType() async {
    try {
      final response = await dioClientWithNoAuth.post(
        ApiEndPoint.getLeaveType,
        options: Options(headers: {
          'Content-type': 'multipart/form-data',
          'Accept': 'application/json',
          'Authorization':
              'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
        }),
      );
      if (response.statusCode == 200) {
        var data = (response.data as List)
            .map((data) => LeaveTypeModel.fromMap(data))
            .toList();

        return data;
      } else {}
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
