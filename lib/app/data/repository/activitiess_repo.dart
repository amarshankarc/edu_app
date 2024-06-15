import 'package:mechine_test/app/data/model/activities.dart';
import 'package:mechine_test/app/utils/asset_helper.dart';
import 'package:mechine_test/app/utils/my_theme.dart';

List<Activity> activities = <Activity>[
  Activity(
      onTap: () {},
      name: "Exam",
      icon: AssetHelper.exam,
      colors: [MyTheme.examGradientOne, MyTheme.examGradientTwo]),
  Activity(
      onTap: () {},
      name: "Practice",
      icon: AssetHelper.practice,
      colors: [MyTheme.practiceGradientOne, MyTheme.practiceGradientTwo]),
  Activity(
      onTap: () {},
      name: "Material",
      icon: AssetHelper.material,
      colors: [MyTheme.materialGradientOne, MyTheme.materialGradientTwo]),
];
