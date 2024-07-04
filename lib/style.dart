import 'package:flutter/material.dart';

class ThemeColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color blue = Color(0xFF007AFF);
  static const Color startPoint = Color(0xFF64FFDA);
  static const Color endPoint = Color(0xFF009688);
  static const Color pathPoint = Color(0xFF4CAF50);
  static const Color red = Color(0xFFF44336);
  static const Color transparent = Color(0x00000000);
}

abstract class BC {


  static Color get black => ThemeColors.black;

  static Color get white => ThemeColors.white;

  static Color get blue => ThemeColors.blue;

  static Color get startPoint => ThemeColors.startPoint;

  static Color get endPoint => ThemeColors.endPoint;

  static Color get pathPoint => ThemeColors.pathPoint;

  static Color get red => ThemeColors.red;

  static Color get transparent => ThemeColors.transparent;
}

abstract class BS {
  static TextStyle get sb20 => TextStyle(
      color: BC.black,
      fontFamily: 'SFPro',
      fontSize: 20,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600);

  static TextStyle get sb18 => TextStyle(
      color: BC.black,
      fontFamily: 'SFPro',
      fontSize: 18,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w600);

  static TextStyle get light14 => TextStyle(
      color: BC.black,
      fontFamily: 'SFPro',
      fontSize: 14,
      height: 1.28,
      letterSpacing: 0.09,
      fontWeight: FontWeight.w300);
}

abstract class BDuration {
  static Duration get d200 => const Duration(milliseconds: 200);
}

abstract class BRadius {
  static BorderRadius get r16 => const BorderRadius.all(Radius.circular(16));
  static BorderRadius get r4 => const BorderRadius.all(Radius.circular(4));
}

abstract class BShadow {
  static List<BoxShadow> get light => [
        BoxShadow(
            color: BC.black.withOpacity(0.1),
            blurRadius: 60,
            offset: const Offset(0, 2))
      ];
}
