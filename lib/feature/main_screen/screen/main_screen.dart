import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

bottomNavigationBar: BottomNavigationBar(items: [

BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Like"),



],),

    );
  }
}