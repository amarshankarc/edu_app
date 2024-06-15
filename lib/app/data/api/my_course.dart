import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mechine_test/app/data/model/api_resp.dart';
import 'package:mechine_test/app/presets/token.dart';

import '../../presets/api_paths.dart';
import '../../utils/err_m.dart';
import '../../utils/my_dio.dart';

abstract class MyCourseServices {
  static Future<ApiResp> fetchData() async {
    dynamic resp;
    await errMAsync(
      () async {
        resp = await MyDio().get(ApiPaths.myCourse,
            queryParameters: {"auth_token": Token.accessToken});
      },
      title: 'Failed',
    );

    if (resp is DioException) {
      if (resp.type == DioExceptionType.unknown) {
        showMsg('Something went wrong with server communication', " Failed");
      }
      if (resp.type == DioExceptionType.connectionError) {}
      if (resp.response?.statusCode >= 400 && resp.response?.statusCode < 500) {
        log('400 >> ${resp.response}');
        showMsg("Invalid ", " Failed");
      }
      if (resp.response?.statusCode >= 500) {
        log('500 >> ${resp.response}');
        showMsg("Failed", "Server Issue");
      }
      if (resp.type == DioExceptionType.connectionTimeout) {
        showMsg('Connection timed-out. Check internet connection.', " Failed");
      }
      if (resp.type == DioExceptionType.receiveTimeout) {
        showMsg('Unable to connect to the server', "Failed");
      }
    }
    if (resp == null) {
      showMsg("No Response", "Failed");
    }
    return apiStatusFromJson(resp);
  }
}
