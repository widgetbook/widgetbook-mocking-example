import 'package:flutter/widgets.dart';

class AppThemeData {
  final Color backgroundColor;
  final Color fontColor;

  const AppThemeData({
    required this.backgroundColor,
    required this.fontColor,
  });

  factory AppThemeData.light() {
    return const AppThemeData(
      backgroundColor: Color(0xFFFFFFFF),
      fontColor: Color(0xFF000000),
    );
  }

  factory AppThemeData.dark() {
    return const AppThemeData(
      backgroundColor: Color(0xFF000000),
      fontColor: Color(0xFFFFFFFF),
    );
  }
}
