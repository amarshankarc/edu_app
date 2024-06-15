import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mechine_test/app/data/repository/activitiess_repo.dart';
import 'package:mechine_test/app/utils/asset_helper.dart';
import 'package:mechine_test/app/utils/my_theme.dart';

import '../../../data/repository/coures_repo.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
        body: Column(
      children: [
        //TopSection
        Container(
          height: Get.height * .239,
          width: Get.width,
          padding: MyTheme.allPadding(left: 22, right: 22, top: 50, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                MyTheme.appGradientOne,
                MyTheme.appGradientTwo,
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Good Morning !",
                        style: MyTheme.inter(
                            color: MyTheme.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.94),
                      ),
                      Obx(
                        () => Text(
                          controller.myCourse.value.userdata != null
                              ? controller.myCourse.value.userdata!.firstName +
                                  controller.myCourse.value.userdata!.lastName
                              : "",
                          style: MyTheme.inter(
                              color: MyTheme.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 19.36),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: Get.height * .023,
                    width: Get.width * .089,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyTheme.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "10",
                          style: MyTheme.inter(
                              color: MyTheme.golden,
                              fontSize: 14.52,
                              fontWeight: FontWeight.w700),
                        ),
                        Image.asset(AssetHelper.coin),
                      ],
                    ),
                  ),
                  MyTheme.space(width: 20),
                  Obx(
                      ()=> CircleAvatar(
                      backgroundImage: controller.myCourse.value.userdata != null
                          ? NetworkImage(
                              controller.myCourse.value.userdata!.image)
                          : AssetImage(AssetHelper.defaultDp),
                    ),
                  )
                ],
              ),
              MyTheme.space(height: 30),
              Container(
                height: Get.height * .07,
                padding: MyTheme.symmetricPadding(width: 18, height: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: MyTheme.white,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Course",
                          style: MyTheme.inter(
                            color: MyTheme.lightBlack,
                            fontSize: 14.52,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          controller.myCourse.value.userdata != null
                              ? controller.myCourse.value.userdata!.courseName
                              : "",
                          style: MyTheme.inter(
                            fontSize: 19.36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: Get.width * .28,
                      height: Get.height * .04,
                      decoration: BoxDecoration(
                          color: MyTheme.appGradientOne,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Change",
                            style: MyTheme.inter(
                                fontSize: 21, color: MyTheme.white),
                          ),
                          Image.asset(AssetHelper.change),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        MyTheme.space(height: 20),

        //Activity
        ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 0,
              minWidth: 0,
              maxHeight: Get.height * .13,
              maxWidth: Get.width),
          child: ListView.builder(
              padding: MyTheme.symmetricPadding(height: 10),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: activities.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: MyTheme.symmetricPadding(width: 45),
                  child: Container(
                    height: Get.height * .1,
                    width: Get.width / 4.5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              gradient: LinearGradient(
                                  end: Alignment.bottomCenter,
                                  begin: Alignment.topCenter,
                                  colors: activities[index].colors),
                            ),
                            child: Center(
                              child: Image.asset(activities[index].icon),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: activities[index].colors.first),
                            child: Center(
                              child: Text(
                                activities[index].name,
                                style: MyTheme.inter(
                                    fontSize: 14.52,
                                    fontWeight: FontWeight.w600,
                                    color: MyTheme.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),

        MyTheme.space(height: 20),

        //Course
        Padding(
          padding: MyTheme.symmetricPadding(width: 18, height: 10),
          child: Row(
            children: [
              Text(
                "Course",
                style:
                    MyTheme.inter(fontWeight: FontWeight.w700, fontSize: 19.38),
              ),
              const Spacer(),
              Text(
                "See All",
                style: MyTheme.inter(
                    color: MyTheme.appGradientOne,
                    fontWeight: FontWeight.w600,
                    fontSize: 19.38),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * .4,
          child: GridView.builder(
              itemCount: courses.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: DottedBorder(
                        borderType: BorderType.Circle,
                        dashPattern: const [20, 10],
                        color: courses[index].colors.last,
                        padding: MyTheme.symmetricPadding(width: 8, height: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: courses[index].colors),
                          ),
                          child: Center(
                            child: Image.asset(courses[index].icon),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Center(
                            child: Text(
                          courses[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: MyTheme.inter(
                              fontWeight: FontWeight.w700, fontSize: 16.36),
                        )))
                  ],
                );
              }),
        )
      ],
    ));
  }
}
