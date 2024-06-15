import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class MyTheme {
  //-------------------[Colors]----------------------
  static Color white = Colors.white;
  static Color appGradientOne = const Color.fromRGBO(81, 46, 126, 1);
  static Color appGradientTwo = const Color.fromRGBO(160, 115, 218, 1);
  static Color golden = const Color.fromRGBO(246, 182, 71, 1);
  static Color lightBlack = const Color.fromRGBO(112, 112, 112, 1);
  static Color examGradientOne = const Color.fromRGBO(237, 97, 123, 1);
  static Color examGradientTwo = const Color.fromRGBO(242, 133, 155, 1);
  static Color practiceGradientOne = const Color.fromRGBO(255, 175, 1, 1);
  static Color practiceGradientTwo = const Color.fromRGBO(236, 192, 127, 1);
  static Color materialGradientOne = const Color.fromRGBO(36, 174, 210, 1);
  static Color materialGradientTwo = const Color.fromRGBO(123, 201, 221, 1);


  static Color kietGradientOne = const Color.fromRGBO(20, 200, 197, 1);
  static Color kietGradientTwo = const Color.fromRGBO(131, 223, 223, 1);

  static Color lp_up_hseGradientOne = const Color.fromRGBO(255, 229, 142, 1);
  static Color lp_up_hseGradientTwo = const Color.fromRGBO(252, 218, 112, 1);

  static Color setGradientOne = const Color.fromRGBO(254, 216, 169, 1);
  static Color setGradientTwo = const Color.fromRGBO(224, 150, 59, 1);

  static Color netGradientOne = const Color.fromRGBO(250, 183, 185, 1);
  static Color  netGradientTwo = const Color.fromRGBO(123, 201, 221, 1);

  static Color montessoriGradientOne = const Color.fromRGBO(194, 169, 251, 1);
  static Color montessoriGradientTwo = const Color.fromRGBO(161, 115, 253, 1);

  static Color craseCourseGradientOne = const Color.fromRGBO(248, 113, 180, 1);
  static Color craseCourseGradientTwo = const Color.fromRGBO(252, 29, 137, 1);
  //-------------------[TextStyle]----------------------

  static TextStyle inter(
      {FontStyle? fontStyle,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      double? letterSpacing,
      TextDecoration? decoration,
      double? spacing}) {
    return GoogleFonts.inter(
        color: color ?? Colors.black,
        fontSize: fontSize != null
            ? Get.height * (fontSize / 1000)
            : Get.height * .018,
        fontWeight: fontWeight ?? FontWeight.w500,
        letterSpacing: letterSpacing,
        decoration: decoration);
  }

  //-------------------[Padding]----------------------
  static EdgeInsets symmetricPadding({double? width, double? height}) {
    return EdgeInsets.symmetric(
        horizontal:
            width == null ? Get.width * .05 : Get.width * (width / 1000),
        vertical:
            height == null ? Get.height * .0 : Get.height * (height / 1000));
  }

  static EdgeInsets allPadding(
      {double? left, double? right, double? top, double? bottom}) {
    return EdgeInsets.only(
        left: left == null ? Get.width * .0 : Get.width * (left / 1000),
        right: right == null ? Get.height * .0 : Get.width * (right / 1000),
        top: top == null ? Get.height * .0 : Get.height * (top / 1000),
        bottom:
            bottom == null ? Get.height * .0 : Get.height * (bottom / 1000));
  }

  //-------------------[For Space]----------------------
  static SizedBox space({double? height, double? width}) {
    return SizedBox(
      height: height == null ? 0 : Get.height * (height / 1000),
      width: width == null ? 0 : Get.width * (width / 1000),
    );
  }
}
