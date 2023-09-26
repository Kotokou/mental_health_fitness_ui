import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/constants/strings.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:sizer/sizer.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

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
                  Container(
                    height: 8.h,
                    width: 8.h,
                    decoration: BoxDecoration(
                      color: $styles.colors.blurViolet,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.pause_rounded,
                      color: $styles.colors.white,
                      size: $styles.insets.md,
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
            ],
          ),
        ),
      ),
    );
  }
}
