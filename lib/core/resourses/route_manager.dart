import 'package:fashion/feature/Categories_screen/screen/Categories_screen.dart';
import 'package:fashion/feature/home_screen/screen/home_screen.dart';
import 'package:fashion/feature/splace_screen/screen/spalce_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Map<String, Widget Function(BuildContext)> route = {

RouteName.spalceScreen:(context)=>SpalceScreen(),
RouteName.homeScreen:(context)=>HomeScreen(),
RouteName.categoriesScreen:(context)=>CategoriesScreen(),


  };
}
 class RouteName{
static String spalceScreen="SpalceScreen";
static String homeScreen="HomeScreen";
static String categoriesScreen="CategoriesScreen";

 }