import 'package:fashion/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({
    super.key,
    required this.title,
    required this.image,
    required this.ontap,
  });
  final String title;
  final String image;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    final double sizefont = MediaQuery.of(context).size.width;
    //final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: ontap,
        child: Column(
          children: [
            Container(
              width: sizeHeight * .1,
              height: sizeHeight * .1,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(image),
            ),
            Gap(10),
            CustomText(
              title: title,
              sizeFont: sizefont * .03,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
