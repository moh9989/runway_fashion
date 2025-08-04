import 'package:fashion/core/resourses/route_manager.dart';
import 'package:fashion/feature/splace_screen/screen/spalce_screen.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SpalceScreen(),
      routes: RouteManager.route,
      initialRoute: RouteName.spalceScreen,
    );
  }
}