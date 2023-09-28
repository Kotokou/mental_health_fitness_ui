import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/constants/strings.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  double val = 0;

  bool onPlay = false;

  _setTimer() {
    Timer(
      const Duration(milliseconds: 10000),
      () {
        setState(() {
          onPlay = !(onPlay);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            $styles.insets.medium,
            5.h,
            $styles.insets.medium,
            0,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.expand_more,
                      color: $styles.colors.black,
                      size: $styles.insets.medium,
                    ),
                    const Spacer(),
                    SvgPicture.asset(Assets.playlistIcon),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  Strings.calmingPlaylist,
                  style: $styles.textStyles.titleMedium,
                ),
                SizedBox(height: 2.5.h),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 30.h,
                    width: 68.w,
                    decoration: BoxDecoration(
                      color: $styles.colors.blurViolet,
                      borderRadius: BorderRadius.all(
                        Radius.circular($styles.insets.md),
                      ),
                      image: const DecorationImage(
                        image: AssetImage(Assets.cover),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: $styles.insets.small),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          Strings.rainOnGlass,
                          style: $styles.textStyles.titleLargeMedium,
                        ),
                        Text(
                          Strings.by,
                          style: $styles.textStyles.bodySemiRegular,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Assets.link),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(Assets.playBack),
                        SvgPicture.asset(Assets.playBack),
                      ],
                    ),
                    CircularPercentIndicator(
                      backgroundColor: $styles.colors.blurViolet,
                      progressColor: $styles.colors.violet,
                      radius: 4.5.h,
                      circularStrokeCap: CircularStrokeCap.round,
                      lineWidth: 5,
                      animation: true,
                      animationDuration: 10000,
                      percent: onPlay ? 1 : 0,
                      center: Container(
                        height: 8.h,
                        width: 8.h,
                        decoration: BoxDecoration(
                          color: $styles.colors.blurViolet,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            if (!onPlay) {
                              setState(() {
                                onPlay = (!onPlay);
                              });
                              _setTimer();
                            } else {}
                          },
                          child: Icon(
                            onPlay
                                ? Icons.pause_rounded
                                : Icons.play_arrow_rounded,
                            color: $styles.colors.white,
                            size: $styles.insets.md,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(Assets.playForward),
                        SvgPicture.asset(Assets.playForward),
                      ],
                    ),
                    SvgPicture.asset(Assets.aleatoire),
                  ],
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
