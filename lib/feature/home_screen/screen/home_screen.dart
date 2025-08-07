import 'package:fashion/core/resourses/assets_named_manager.dart';
import 'package:fashion/core/resourses/content.dart';
import 'package:fashion/core/resourses/route_manager.dart';
import 'package:fashion/core/resourses/size_manager.dart';
import 'package:fashion/core/resourses/text_manager.dart';
import 'package:fashion/feature/Categories_screen/screen/Categories_screen.dart';
import 'package:fashion/feature/home_screen/widget/custom_categories.dart';
import 'package:fashion/widget/custom_appbar.dart';
import 'package:fashion/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/vidoes/arabic.mp4")
      ..initialize().then((_) {});
    setState(() {
      _controller.play();

      _controller.setLooping(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double sizefont = MediaQuery.of(context).size.width;
    // final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppbar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: TextManager.runway,
        preffix: IconNamedManager.menuIcon,
        suffix: IconNamedManager.notifictionIcon,
      ),
      body: ListView(
        children: [
          //Gap(GapSize.gapSize27_5),

          InkWell(
            onTap: () {
              _controller.pause();
            },
            onDoubleTap: () {
              _controller.play();
            },
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
          Gap(GapSize.gapSize17),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomText(
              fontWeight: FontWeight.bold,
              title: TextManager.categories,
              sizeFont: sizefont * .03,
            ),
          ),
          Gap(GapSize.gapSize17),

          SizedBox(
            height: sizeHeight * .9,

            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => Gap(sizeHeight * .01),
              itemCount: Content.catogryModel.length,
              itemBuilder: (context, index) => CustomCategories(
                title: Content.catogryModel[index].title,
                image: Content.catogryModel[index].image,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoriesScreen(
                        title: Content.catogryModel[index].title,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
