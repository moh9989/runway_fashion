import 'package:fashion/core/resourses/assets_named_manager.dart';
import 'package:fashion/core/resourses/color_manager/color_manager.dart';
import 'package:fashion/core/resourses/content.dart';
import 'package:fashion/core/resourses/text_manager.dart';
import 'package:fashion/feature/Categories_screen/widget/custom_Categories_details.dart';
import 'package:fashion/feature/Categories_screen/widget/custom_filter_container.dart';
import 'package:fashion/feature/product_details/screen/product_screen.dart';
import 'package:fashion/model/product_details_model.dart';
import 'package:fashion/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(
        color: ColorManager.whiteColor,
        title: title,

        //leadingWidth: 0,
        //preffix: IconNamedManager.menuIcon,
        suffix: IconNamedManager.basket,
      ),
      body: ListView(
        children: [
          CustomFilterContainer(
            title: TextManager.sortBy,
            titleTwo: TextManager.filter,
            imageOne: IconNamedManager.more,
            imageTwo: IconNamedManager.multe,
            imageThree: IconNamedManager.menu2,
            imageFour: IconNamedManager.profile,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Content.productDetailsModel.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                childAspectRatio: (sizeWidth * .030) / (sizeHeight * .026),
                //crossAxisSpacing: sizeWidth * .02,
                //mainAxisSpacing: .0010000,
              ),
              itemBuilder: (context, index) {
                ProductDetailsModel product =
                    Content.productDetailsModel[index];
                return CustomCategoriesDetails(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(
                          title: product.title,
                          price: product.price,
                          image: product.image,
                        ),
                      ),
                    );
                  },
                  image: product.image,
                  title: product.title,
                  price: product.price,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
