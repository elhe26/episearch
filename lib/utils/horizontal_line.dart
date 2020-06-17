import 'package:flutter/material.dart';

class DrawHorizontalLine extends CustomPainter {
  final Color lineColor;
  final double strokeWidth;
  Paint _paint;

  DrawHorizontalLine({this.lineColor, this.strokeWidth}) {
    _paint = Paint()
      ..color = this.lineColor
      ..strokeWidth = this.strokeWidth
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0.0, 0.0), Offset(30.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
