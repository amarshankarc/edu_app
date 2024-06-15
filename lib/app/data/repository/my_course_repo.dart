import 'package:mechine_test/app/data/api/my_course.dart';
import 'package:mechine_test/app/data/model/api_resp.dart';

import '../model/my_course.dart';

abstract class MyCourseRepo {
  static Future<MyCourse> fetchData() async {
    ApiResp resp = await MyCourseServices.fetchData();

    if (resp.message == "Success") {
      MyCourse data = MyCourse.fromJson(resp.data);
      //Success
      return data;
    } else {
      // Fauilre
      return MyCourse();
    }
  }
}
