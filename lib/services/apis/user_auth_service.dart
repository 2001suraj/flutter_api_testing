import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_testing/dio/end_points.dart';
import 'package:flutter_api_testing/models/student_login_model/student_login_model.dart';
import 'package:flutter_api_testing/models/teacher_login_model/teacher_login_model.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../dio/dio_client.dart';

class UserAuthService {
  Future<TeacherLoginModel?> getToken(
      {userName, passWord, String? qrCode}) async {
    try {
      dynamic data;
      if (qrCode != null) {
        data = {'grant_type': 'password', 'qrCode': qrCode};
      }

      final response = await dioClientWithNoAuth.post(
        ApiEndPoint.token,
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
        var data = TeacherLoginModel.fromMap(response.data);

        LocalStorage()
            .savetoken(key: 'Teachertoken', token: data.accessToken.toString());

        return TeacherLoginModel.fromMap(response.data);
      } else {}
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<StudentLoginModel?> getStudentToken(
      {userName, passWord, String? qrCode}) async {
    try {
      dynamic data;
      if (qrCode != null) {
        data = {'grant_type': 'password', 'qrCode': qrCode};
      }

      final response = await dioClientWithNoAuth.post(
        ApiEndPoint.token,
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
        var data = StudentLoginModel.fromMap(response.data);

        LocalStorage()
            .savetoken(key: 'token', token: data.accessToken.toString());
        print(
            'teacher token : ===>  ${await LocalStorage().gettoken(value: 'Teachertoken')}');
        print(
            'student token : ===>  ${await LocalStorage().gettoken(value: 'token')}');

        return StudentLoginModel.fromMap(response.data);
      } else {}
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
