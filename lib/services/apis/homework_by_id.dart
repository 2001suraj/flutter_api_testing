import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/homework_by_id_model/homework_by_id_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class HomeWorkListByID {
  Future<List<HomeworkByIdModel>> getHomeoworkList() async {
    try {
      final response =
          await dioClientWithNoAuth.post(ApiEndPoint.getHomeworkDetails,
              options: Options(
                headers: {
                  'Content-type': 'application/json',
                  'Accept': 'application/json',
                  'Authorization':
                      'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
                },
              ),
              data: {"homeWorkId": 1});

      var data = (response.data as List)
          .map((e) => HomeworkByIdModel.fromMap(e))
          .toList();


      // print("HomeWorkType => " + response.data[0]['HomeWorkType']);
      return data;
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}
