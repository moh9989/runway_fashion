import 'package:fashion/feature/splace_screen/screen/spalce_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Map<String, Widget Function(BuildContext)> route = {

RouteName.spalceScreen:(context)=>SpalceScreen()

  };
}
 class RouteName{
static String spalceScreen="SpalceScreen";
 }