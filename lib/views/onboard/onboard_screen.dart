import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/constants/strings.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:mental_health_fitness_ui/views/home/home_screen.dart';
import 'package:sizer/sizer.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.blue,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              color: $styles.colors.blue,
            ),
            Positioned(
              top: 30.h,
              child: SvgPicture.asset(
                Assets.background,
                height: 50.h,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(Assets.illustration),
            ),
            Positioned(
              top: 5.h,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: $styles.insets.lm),
                child: Text(
                  Strings.onboardTitle,
                  style: $styles.textStyles.titleBigBold,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              bottom: 5.h,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: $styles.insets.md),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: $styles.colors.maron,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular($styles.insets.small),
                    ),
                    padding: EdgeInsets.symmetric(vertical: $styles.insets.sm),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    Strings.onboardButtonTitle,
                    style: $styles.textStyles.labelMedium.copyWith(
                      color: $styles.colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
