import 'package:fashion/core/resourses/color_manager/color_manager.dart';
import 'package:fashion/widget/custom_svg.dart';
import 'package:fashion/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomFilterContainer extends StatelessWidget {
  const CustomFilterContainer({
    super.key,
    required this.title,
    required this.titleTwo,
    required this.imageOne,
    required this.imageTwo,
    required this.imageThree,
    required this.imageFour,
  });
  final String title;
  final String titleTwo;
  final String imageOne;
  final String imageTwo;
  final String imageThree;
  final String imageFour;

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizefont = MediaQuery.of(context).size.width;

    return Container(
      height: sizeHeight * .052,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.greyColor, width: .3),
      ),
      padding: EdgeInsets.symmetric(horizontal: sizeWidth * .025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
            children: [
              CustomText(
                title: title,
                sizeFont: sizefont * .03,
                fontWeight: FontWeight.bold,
              ),
              Gap(sizeWidth * .045),
              CustomSvg(
                svgImage: imageOne,
                height: sizeHeight * .05,
                width: sizeWidth * .040,
              ),
            ],
          ),
          Row(
            children: [
              CustomSvg(
                svgImage: imageTwo,
                height: sizeHeight * .05,
                width: sizeWidth * .035,
              ),
              Gap(sizeWidth * .030),

              CustomText(
                title: titleTwo,
                sizeFont: sizefont * .03,
                fontWeight: FontWeight.bold,
              ),
              Gap(sizeWidth * .050),
              CustomSvg(
                svgImage: imageThree,
                height: sizeHeight * .05,
                width: sizeWidth * .035,
              ),
              Gap(sizeWidth * .050),
              CustomSvg(
                svgImage: imageFour,
                height: sizeHeight * .05,
                width: sizeWidth * .040,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
