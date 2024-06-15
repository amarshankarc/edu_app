import 'package:get/get.dart';
import 'package:mechine_test/app/data/model/my_course.dart';
import 'package:mechine_test/app/data/repository/my_course_repo.dart';

class HomeController extends GetxController {
  Rx<MyCourse> myCourse =MyCourse().obs;
  @override
  void onInit() async{
    myCourse.value=await MyCourseRepo.fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}



}
