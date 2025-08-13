import 'package:fashion/feature/Categories_screen/widget/custom_detiails.dart';
import 'package:flutter/material.dart';

class CustomCategoriesDetails extends StatelessWidget {
  const CustomCategoriesDetails({
    super.key,
    required this.image,
    this.onTap, required this.title, required this.price,
  });
  final String image ,title,price;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left:20),
      child: GestureDetector(
        onTap: onTap,
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
              child: Stack(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      image,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: sizeWidth * .1,
                    right: sizeWidth * .1,
                    bottom: sizeHeight * .001,
                    // top: sizeHeight * .001,
                    child: Image.asset("assets/images/man_model/shadw.png"),
                  ),
                ],
              ),
            ),
           CustomDetiails( title: title,fontSize: sizeWidth *.03, price: price,)
          ],
        ),
      ),
    );
  }
}
