import 'package:fashion/core/resourses/assets_named_manager.dart';
import 'package:fashion/core/resourses/color_manager/color_manager.dart';
import 'package:fashion/core/resourses/text_manager.dart';
import 'package:fashion/feature/Categories_screen/widget/custom_container.dart';
import 'package:fashion/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(
        color: ColorManager.whiteColor,
        title: title ?? "",
        //preffix: IconNamedManager.menuIcon,
        suffix: IconNamedManager.basket,
      ),
      body: ListView(
        children: [
          CustomContainer(
            title: TextManager.sortBy,
            titleTwo: TextManager.filter,
            imageOne: IconNamedManager.more,
            imageTwo: IconNamedManager.multe,
            imageThree: IconNamedManager.menu2,
            imageFour: IconNamedManager.profile,
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                childAspectRatio: (sizeWidth * .035) / (sizeHeight * .035),
                crossAxisSpacing: sizeWidth * .015,
                mainAxisSpacing: sizeHeight * .03,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: sizeHeight * .35,
                        width: sizeWidth * .45,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/images/man_model/man_model.png",
                        ),
                      ),
                      Text("data"),
                      Gap(sizeHeight * .0001)
                     , Row(
                       
                        children: [Text("dddddddd"),
                        Spacer(),
                         Icon(Icons.favorite)],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
