abstract class AssetHelper {
 static String pngIcon(String svg) {
    return 'asset/png/$svg';
  }

//--------------------------[icon]------------------------

  static get coin => pngIcon('coins.png');
  static get defaultDp => pngIcon('Dp.png');
  static get change => pngIcon('change.png');

  ///Category
  static get practice => pngIcon('download.png');
  static get material => pngIcon('material.png');
  static get exam => pngIcon('exam.png');

  ///Course
 static get crashCourse => pngIcon('crashCourse.png');
 static get KTET => pngIcon('KTET.png');
 static get NET => pngIcon('NET.png');
 static get SET=> pngIcon('SET.png');
 static get montessori=> pngIcon('Montessori.png');
 static get LPUPHST=> pngIcon('LP:UP:HST.png');
}
