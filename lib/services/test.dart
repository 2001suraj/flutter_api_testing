import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/models/teacher_login_model/teacher_login_model.dart';

import '../dio/dio_client.dart';


class UserAuthService {
  Future<TeacherLoginModel?> getToken({userName, passWord, String? qrCode}) async {
    try {
      dynamic data;
      if (qrCode != null) {
        data = {'grant_type': 'password', 'qrCode': qrCode};
      }

      final response = await dioClientWithNoAuth.post(
        'token',
        options: Options(
          headers: {'Content-Type': "application/x-www-form-urlencoded"},
        ),
        data: data ??
            {
              'userName': userName,
              'password': passWord,

              //'userName': Kma1LoginCredentUserials.teacherUser,
              // 'password': Kma1LoginCredentUserials.teacherpassword,
              //'userName': userName,
              //  'password': passWord,
              'grant_type': 'password',
            },
      );
      if (response.statusCode == 200) {
        return TeacherLoginModel.fromMap(response.data);
      } else {
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }


}
