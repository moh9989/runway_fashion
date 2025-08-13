import 'package:fashion/core/resourses/assets_named_manager.dart';
import 'package:fashion/core/resourses/color_manager/color_manager.dart';
import 'package:fashion/core/resourses/text_manager.dart';
import 'package:fashion/feature/Categories_screen/widget/custom_filter_container.dart';
import 'package:fashion/feature/product_details/widget/custom_bottom_sheet.dart';
import 'package:fashion/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    super.key,
    required this.title, required this.price, required this.image});

  final String title;
  final String price;
    final String image;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showBootomSheet();
    });
  }

  void showBootomSheet() {
    showModalBottomSheet(
      isDismissible: true,
      //barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
      
        return DraggableScrollableSheet(
          snap: false,
          initialChildSize:.15,
          maxChildSize: .99,
          minChildSize: .15,
          expand: false,
          
          builder: (context, scrollController) {
            return CustomBottomSheet(
              controller: scrollController,
              title: widget.title.toString(),
              price: widget.price.toString(),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(
        color: ColorManager.whiteColor,
        title: widget.title,
        //preffix: IconNamedManager.menuIcon,
        suffix: IconNamedManager.basket,
      ),
      body: Column(
        children: [
          CustomFilterContainer(
            title: TextManager.sortBy,
            titleTwo: TextManager.filter,
            imageOne: IconNamedManager.more,
            imageTwo: IconNamedManager.multe,
            imageThree: IconNamedManager.menu2,
            imageFour: IconNamedManager.profile,
          ),
          Gap(15),
          Stack(
            children: [
              Image.asset(
                widget.image,
                width: sizeWidth * .9,
                height: sizeHeight * .7,
              ),
              Positioned(
                right: sizeWidth * .02,
                bottom: sizeHeight * -.02,
                top: sizeHeight * .6,
                left: sizeWidth * .1,
                child: Image.asset(
                  "assets/images/man_model/shadw.png",
                  width: sizeWidth * .9,
                  height: sizeHeight * .7,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
