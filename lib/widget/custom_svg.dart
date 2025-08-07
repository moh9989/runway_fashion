import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg({super.key, required this.svgImage, this.height, this.width});
  final String svgImage;
  final double? height;
    final double? width;

  @override
  Widget build(BuildContext context) {
   
    return SvgPicture.asset(
      svgImage,
      width: height,
      height: width,
    );
  }
}
