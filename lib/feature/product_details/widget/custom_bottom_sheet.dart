import 'package:fashion/core/resourses/color_manager/color_manager.dart';
import 'package:fashion/feature/Categories_screen/widget/custom_detiails.dart';
import 'package:fashion/feature/product_details/widget/bottom_sheet_details.dart';
import 'package:fashion/feature/product_details/widget/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.price,
    required this.controller,
  });

  final String title;
  final String price;
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(15),
      height: sizeHeight * .15,
      width: sizeWidth * .9999999,
      child: Center(
        child: ListView(
          controller: controller,
          children: [
            Container(
              height: sizeHeight * .0055,
              //width: double.infinity,
              width: sizeWidth * .003,
              decoration: BoxDecoration(
                color: ColorManager.greyColor2,

                borderRadius: BorderRadius.circular(5),
              ),
            ),
            CustomDetiails(
              title: title,
              fontSize: sizeWidth * .03,
              price: price,
              gap: sizeWidth * .050,
            ),
            Gap(sizeWidth * .020),
            BottomSheetDetails(),
            Gap(sizeHeight * .010),
            CustomMaterialButton(
              title: "Add To Bag",
              height: sizeHeight * .085,
              color: ColorManager.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
