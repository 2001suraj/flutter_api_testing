import 'package:dio/dio.dart';

import 'end_points.dart';

Dio dioClient = Dio(
  BaseOptions(
    baseUrl: '${ApiEndPoint.baseUrl}/${ApiEndPoint.version}/',
    // headers: {
    //   "Autheoization":
    // },

    connectTimeout: const Duration(seconds: ApiEndPoint.connectionTimeout),
    receiveTimeout: const Duration(seconds: ApiEndPoint.receiveTimeout),
    responseType: ResponseType.json,
  ),
);

Dio dioClientWithNoAuth = Dio(
  BaseOptions(
    baseUrl: '${ApiEndPoint.baseUrl}/${ApiEndPoint.version}/',
    connectTimeout: const Duration(seconds: ApiEndPoint.connectionTimeout),
    receiveTimeout: const Duration(seconds: ApiEndPoint.receiveTimeout),
    responseType: ResponseType.json,
  ),
)
// ..interceptors.addAll([
//     if (kDebugMode)
//       PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseHeader: true,
//         error: true,
//         request: true,
//         responseBody: true,
//       ),
//   ])
    ;

// final Dio dioClient = Dio(
//   BaseOptions(
//     connectTimeout: const Duration(seconds: ApiEndPoint.connectionTimeout),
//     receiveTimeout: const Duration(seconds: ApiEndPoint.connectionTimeout),
//     responseType: ResponseType.json,
//   ),
// )..interceptors.add(AuthorizationInterceptor());
