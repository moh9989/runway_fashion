import 'package:fashion/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.title,
    required this.height,
    required this.color,
  });
  final String title;
  final Color color;
  final double height;
  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      color: color,
      height: height,
      //height: sizeHeight * .085,
      onPressed: () {},
      child: CustomText(
        title: title,
        color: Colors.white,
        sizeFont: sizeWidth * .055,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
