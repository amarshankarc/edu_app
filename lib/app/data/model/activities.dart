import 'dart:ui';

class Activity{
  String name;
  String icon;
  List<Color> colors;
  void Function()  onTap;
  Activity({required this.onTap,required this.name,  required this.icon,required this.colors,});
}