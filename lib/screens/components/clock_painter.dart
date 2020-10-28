import 'dart:math';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter(this.context, this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);
    Paint dotOutPainter = Paint()
      ..color = Theme.of(context).primaryIconTheme.color;
    Paint dotMidPainter = Paint()..color = Theme.of(context).backgroundColor;

    // 秒针
    double secondX =
        centerX + size.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondY =
        centerY + size.width * 0.4 * sin((dateTime.second * 6) * pi / 180);

    canvas.drawLine(
      center,
      Offset(secondX, secondY),
      Paint()..color = Theme.of(context).primaryColor,
    );

    // 小时
    double hourX =
        centerX + size.width * 0.3 + cos((dateTime.minute * 5) * pi / 180);
    double hourY =
        centerY + size.width * 0.3 + sin((dateTime.minute * 5) * pi / 180);

    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // 分钟
    double minX =
        centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);
    double minY =
        centerY + size.width * 0.35 * sin((dateTime.minute * 6) * pi / 180);

    canvas.drawLine(
      center,
      Offset(minX, minY),
      Paint()
        ..color = Theme.of(context).accentColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );
    // 最外层
    canvas.drawCircle(
      center,
      14,
      dotOutPainter,
    );
    // 中间层
    canvas.drawCircle(
      center,
      13,
      dotMidPainter,
    );
    // 中心原点
    canvas.drawCircle(
      center,
      5,
      dotOutPainter,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
