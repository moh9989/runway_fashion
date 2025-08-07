import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fashion/core/resourses/assets_named_manager.dart';

class AnimtionLine extends StatefulWidget {
  const AnimtionLine({super.key});

  @override
  _AnimtionLineState createState() => _AnimtionLineState();
}

class _AnimtionLineState extends State<AnimtionLine>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 900),
  )..forward();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) => ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [_controller.value, _controller.value + 0.01],
            colors: [Colors.transparent, Colors.white],
          ).createShader(bounds),
          blendMode: BlendMode.dstIn,
          child: SvgPicture.asset(LogoNamedManager.lineLogo, width: 188),
        ),
      ),
    );
  }
}
