import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final $styles = AppStyle();

@immutable
class AppStyle {
  late final colors = _Color();
  late final textStyles = _TextStyle();
  late final insets = _Insets();
}

@immutable
class _Color {
  late final Color white = Colors.white;
  late final Color black = Colors.black;
  late final Color blue = const Color(0xFFAEAFF7);
  late final Color maron = const Color(0xFF371B34);
  late final Color violet = const Color(0xFFEF5DA8);
  late final Color orange = const Color(0xFFF09A59);
  late final Color blurViolet = const Color(0xFFFCDDEC);
  late final Color blurOrange = const Color.fromARGB(30, 240, 158, 84);
  late final Color blurGreen = const Color(0xFFA0E3E2);
}

@immutable
class _TextStyle {
  late final TextStyle titleBigBold = const TextStyle(
    fontFamily: 'Alegreya',
    color: Color(0xFFFAFAFA),
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle labelMedium = const TextStyle(
    fontFamily: 'Alegreya',
    color: Color(0xFF371B34),
    fontSize: 25,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle titleRegular = const TextStyle(
    fontFamily: 'Alegreya',
    color: Color(0xFF371B34),
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );

  final TextStyle titleMedium = const TextStyle(
    fontFamily: 'Alegreya',
    color: Color(0xFF371B34),
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle titleBold = const TextStyle(
    fontFamily: 'Alegreya',
    color: Color(0xFF371B34),
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle labelSmallRegular = const TextStyle(
    fontFamily: 'Alegreya Sans',
    color: Color(0xFF371B34),
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle bodyRegular = const TextStyle(
    fontFamily: 'Alegreya Sans',
    color: Color(0xFF371B34),
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle bodySemiRegular = const TextStyle(
    fontFamily: 'Alegreya Sans',
    color: Color(0xFF371B34),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle bodySmallRegular = const TextStyle(
    fontFamily: 'Alegreya Sans',
    color: Color(0xFF371B34),
    fontSize: 15,
    fontWeight: FontWeight.w300,
  );

  late final TextStyle bodyLargeBold = const TextStyle(
    fontFamily: 'Alegreya Sans',
    color: Color(0xFFEF5DA8),
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle titleLargeMedium = const TextStyle(
    fontFamily: 'Alegreya',
    color: Color(0xFF371B34),
    fontSize: 35,
    fontWeight: FontWeight.w500,
  );
}

@immutable
class _Insets {
  late final double xs = 8;
  late final double small = 10.sp;
  late final double sm = 16.sp;
  late final double medium = 24.sp;
  late final double md = 30.sp;
  late final double large = 38.sp;
  late final double lm = 42.sp;
  late final double xl = 46.sp;
  late final double big = 52.sp;
  late final double xbig = 56.sp;
}
