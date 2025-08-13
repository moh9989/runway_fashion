import 'package:flutter/material.dart';

class CustomContainerMainOne extends StatelessWidget {
  const CustomContainerMainOne({
    super.key,
    required this.height,
    required this.width,
     this.color,
    this.widget, required Stack child,
  });
  final double height, width;
  final Color? color;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: height,

      width:width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget,
    );
  }
}
