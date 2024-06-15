import '../../utils/asset_helper.dart';
import '../../utils/my_theme.dart';
import '../model/activities.dart';

List<Activity> courses = <Activity>[
  Activity(
      onTap: () {},
      name: "KTET",
      icon: AssetHelper.KTET,
      colors: [MyTheme.kietGradientOne, MyTheme.kietGradientTwo]),
  Activity(
      onTap: () {},
      name: "LP/UP/HST",
      icon: AssetHelper.LPUPHST,
      colors: [MyTheme.lp_up_hseGradientOne, MyTheme.lp_up_hseGradientTwo]),
  Activity(
      onTap: () {},
      name: "SET",
      icon: AssetHelper.material,
      colors: [MyTheme.setGradientOne, MyTheme.setGradientTwo]
  ),Activity(
      onTap: () {},
      name: "NET",
      icon: AssetHelper.NET,
      colors: [MyTheme.netGradientOne, MyTheme.netGradientTwo]
  ),Activity(
      onTap: () {},
      name: "Montessori",
      icon: AssetHelper.montessori,
      colors: [MyTheme.montessoriGradientOne, MyTheme.montessoriGradientTwo]
  ),Activity(
      onTap: () {},
      name: "Crash Course",
      icon: AssetHelper.crashCourse,
      colors: [MyTheme.craseCourseGradientOne, MyTheme.craseCourseGradientTwo]
  ),
];
