import 'package:fashion/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDetiails extends StatelessWidget {
  const CustomDetiails({super.key, required this.title, required this.price, this.gap, this.fontSize});
  final String title, price;
  final double? gap,fontSize;

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: title,
          sizeFont: sizeWidth * .03,
         // sizeFont: fontWeight,
          fontWeight: FontWeight.w400,
        ),
        Gap(gap?? sizeHeight * .0001),
        Row(
          children: [
            CustomText(
              title: price,
              sizeFont: fontSize,
              fontWeight: FontWeight.bold,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(Icons.favorite_outline_outlined),
            ),
          ],
        ),
      ],
    );
  }
}
