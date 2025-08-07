import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    required this.sizeFont,
    this.fontWeight,
    this.color,
  });
  final String title;
  final double sizeFont;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: sizeFont,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
