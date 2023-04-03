import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/homework_l_ist_model/homework_list_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class HomeWorkList {
  Future<List<HomeworkListModel>> getHomeoworkList() async {
    try {
      final response = await dioClientWithNoAuth.post(ApiEndPoint.getHomework,
          options: Options(
            headers: {
              'Content-type': 'application/json',
              'Accept': 'application/json',
              'Authorization':
                  'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
            },
          ),
          data: {
            'dateFrom': '2021-01-01',
            'dateTo': '2024-01-01',
          });

      var data = (response.data as List)
          .map((e) => HomeworkListModel.fromMap(e))
          .toList();

      // print(response.data[0]['ClassId']);
      return data;
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}
