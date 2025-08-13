import 'package:fashion/core/resourses/assets_named_manager.dart';
import 'package:fashion/core/resourses/color_manager/color_manager.dart';
import 'package:fashion/widget/custom_svg.dart';
import 'package:fashion/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomSheetDetails extends StatelessWidget {
  const BottomSheetDetails({super.key});

  @override
  Widget build(BuildContext context) {
     final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: sizeWidth * .02),
              height: sizeHeight * .0900,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1.5, color: ColorManager.greyColor2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomText(
                        title: "Select color",
                        sizeFont: sizeWidth * .035,
                        fontWeight: FontWeight.w500,
                      ),
                      Gap(sizeWidth * .025),
                      CustomSvg(svgImage: IconNamedManager.more),
                    ],
                  ),

                  Container(
                    height: sizeHeight * .05,
                    width: sizeWidth * .00020,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: .5,
                        color:  ColorManager.greyColor2,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CustomText(
                        title: "Select Size",
                        sizeFont: sizeWidth * .035,
                        fontWeight: FontWeight.w500,
                      ),
                      Gap(sizeWidth * .025),
                      CustomSvg(svgImage: IconNamedManager.more),
                    ],
                  ),
                ],
              ),
            );
  }
}