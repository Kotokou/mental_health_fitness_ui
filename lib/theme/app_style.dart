import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

AppStyle $styles = AppStyle();

class AppStyle {
  final colors = _Color();
  final textStyles = _TextStyle();
  final insets = _Insets();
}

class _Color {
  late final Color blue = const Color(0xFFAEAFF7);
  late final Color maron = const Color(0xFF371B34);
  late final Color violet = const Color(0xFFEF5DA8);
  late final Color orange = const Color(0xFFAEAFF7);
  late final Color blurViolet = const Color(0xFFFCDDEC);
  late final Color blurOrange = const Color.fromARGB(30, 240, 158, 84);
  late final Color blurGreen = const Color(0xFFA0E3E2);
}

class _TextStyle {
  final TextStyle titleBigBold = const TextStyle(
    color: Color(0xFFFAFAFA),
    fontSize: 40,
    fontFamily: 'Alegreya',
    fontWeight: FontWeight.w700,
  );

  final TextStyle labelMedium = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 25,
    fontFamily: 'Alegreya Sans',
    fontWeight: FontWeight.w500,
  );

  final TextStyle titleRegular = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 30,
    fontFamily: 'Alegreya',
    fontWeight: FontWeight.w400,
  );

  final TextStyle titleMedium = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 30,
    fontFamily: 'Alegreya',
    fontWeight: FontWeight.w500,
  );

  final TextStyle titleBold = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 30,
    fontFamily: 'Alegreya',
    fontWeight: FontWeight.w700,
  );

  final TextStyle labelSmallRegular = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 22,
    fontFamily: 'Alegreya Sans',
    fontWeight: FontWeight.w400,
  );

  final TextStyle bodyRegular = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 15,
    fontFamily: 'Alegreya Sans',
    fontWeight: FontWeight.w400,
  );

  final TextStyle bodySemiRegular = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 16,
    fontFamily: 'Alegreya Sans',
    fontWeight: FontWeight.w400,
  );

  final TextStyle bodySmallRegular = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 15,
    fontFamily: 'Alegreya Sans',
    fontWeight: FontWeight.w300,
  );

  final TextStyle bodyLargeBold = const TextStyle(
    color: Color(0xFFEF5DA8),
    fontSize: 20,
    fontFamily: 'Alegreya Sans',
    fontWeight: FontWeight.w700,
  );

  final TextStyle titleLargeMedium = const TextStyle(
    color: Color(0xFF371B34),
    fontSize: 35,
    fontFamily: 'Alegreya',
    fontWeight: FontWeight.w500,
  );
}

class _Insets {
  final double small = 10.sp;
  final double sm = 16.sp;
  final double medium = 24.sp;
  final double md = 30.sp;
  final double large = 38.sp;
  final double lm = 42.sp;
  final double big = 52.sp;
  final double xbig = 56.sp;
}
