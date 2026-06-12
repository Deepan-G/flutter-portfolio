import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedStarPainter extends CustomPainter {
  final double progress;

  AnimatedStarPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.8);

    final random = Random(42);

    for (int i = 0; i < 150; i++) {
      final x = random.nextDouble() * size.width;

      final baseY =
          random.nextDouble() * size.height;

      final y =
          (baseY + progress * 100) % size.height;

      final radius =
          random.nextDouble() * 2.2;

      canvas.drawCircle(
        Offset(x, y),
        radius,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(
      covariant AnimatedStarPainter oldDelegate) {
    return true;
  }
}