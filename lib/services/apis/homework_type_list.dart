import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/dio_client.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/homework_type_list_model/homework_type_list_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';

class HomeworkTypeList {
  Future<List<HomeworkTypeListModel>?> getHomeTypeList() async {
    try {
      var response = await dioClientWithNoAuth.post(ApiEndPoint.getHomeworkType,
          options: Options(headers: {
            'Content-type': 'application/json',
            'Authorization':
                'Bearer ${await LocalStorage().gettoken(value: 'Teachertoken')}',
          }));
      if (response.statusCode == 200) {
        var data = (response.data as List)
            .map((data) => HomeworkTypeListModel.fromMap(data))
            .toList();
        print('object');
        print(response.data[0]['Name']);

        return data;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
