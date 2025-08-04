import 'package:fashion/core/resourses/image_named_manager.dart';
import 'package:fashion/feature/splace_screen/Widget/animation_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SpalceScreen extends StatefulWidget {
  const SpalceScreen({super.key});

  @override
  State<SpalceScreen> createState() => _SpalceScreenState();
}

class _SpalceScreenState extends State<SpalceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:SvgPicture.asset(ImageNamedManager.runwayLogo,width: 188,) ,

          ),
          Gap(10),
          AnimtionLine(),

          
        ],
      ),
    );
  }
}