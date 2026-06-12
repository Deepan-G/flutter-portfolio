import 'package:flutter/material.dart';
import 'Star_Painter.dart';

class AnimatedStars extends StatefulWidget {
  const AnimatedStars({super.key});

  @override
  State<AnimatedStars> createState() =>
      _AnimatedStarsState();
}

class _AnimatedStarsState
    extends State<AnimatedStars>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return CustomPaint(
          painter: AnimatedStarPainter(
            controller.value,
          ),
          size: Size.infinite,
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}