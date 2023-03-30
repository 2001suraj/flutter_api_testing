import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/assignment_type_list_model/assignment_type_list_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class AssignmentTypeList {
  Future<List<AssignmentTypeListModel>?> getAssignmentTypeList() async {
    try {
      var response =
          await dioClientWithNoAuth.post(ApiEndPoint.getAssignmentType,
              options: Options(headers: {
                'Content-type': 'application/json',
                'Authorization':
                    'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
              }));
      if (response.statusCode == 200) {
        var data = (response.data as List)
            .map((data) => AssignmentTypeListModel.fromMap(data))
            .toList();
        return data;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
