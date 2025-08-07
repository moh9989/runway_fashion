import 'package:fashion/widget/custom_svg.dart';
import 'package:fashion/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.preffix,
    required this.suffix,
    this.color,
    this.leading,
    this.leadingWidth,
  });
  final String title;
  final String? preffix;
  final String suffix;
  final Color? color;
  final Widget? leading;
  final double? leadingWidth;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
     final double sizeHeight = MediaQuery.of(context).size.height;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizefont = MediaQuery.of(context).size.width;

    return AppBar(
      centerTitle: true,
      backgroundColor: color,
      leading: leading,
      leadingWidth: leadingWidth,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSvg(svgImage: preffix ?? ''),
          CustomText(
            title: title,
            sizeFont: sizefont * .040,
            fontWeight: FontWeight.bold,
          ),
          CustomSvg(svgImage: suffix,
          height: sizeHeight * .05,
          width: sizeWidth*.030,
          ),

          //Icon(Icons.na)
        ],
      ),

      toolbarHeight: kToolbarHeight,
    );
  }
}
