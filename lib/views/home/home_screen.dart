import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/constants/strings.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:mental_health_fitness_ui/utils/database.dart';
import 'package:mental_health_fitness_ui/views/home/widgets/home_feelings.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  SvgPicture.asset(Assets.hamburgerIcon),
                  const Spacer(),
                  CircleAvatar(
                    radius: 7.w,
                    backgroundColor: Colors.transparent,
                    backgroundImage: const AssetImage(Assets.avatar),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Text.rich(
                TextSpan(
                  text: Strings.welcomeBack,
                  style: $styles.textStyles.titleRegular,
                  children: [
                    TextSpan(
                      text: Strings.sarina,
                      style: $styles.textStyles.titleMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 4.h),
              Text(
                Strings.askHowFeeling,
                style: $styles.textStyles.labelSmallRegular,
              ),
              SizedBox(height: 3.h),
              const HomeFeelings(),
              SizedBox(height: 4.h),
              Text(
                Strings.todayTask,
                style: $styles.textStyles.labelSmallRegular,
              ),
              SizedBox(height: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: DB
                        .tasks()
                        .map(
                          (e) => Container(
                            margin: EdgeInsets.only(bottom: 3.h),
                            padding: EdgeInsets.symmetric(
                              vertical: $styles.insets.small,
                              horizontal: $styles.insets.sm,
                            ),
                            height: 20.h,
                            decoration: BoxDecoration(
                              color: e.backgoundColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular($styles.insets.medium),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.title,
                                  style: $styles.textStyles.labelMedium,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 2.h),
                                      child: SizedBox(
                                        width: 49.w,
                                        child: Text(
                                          e.description,
                                          style: $styles
                                              .textStyles.bodySmallRegular,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(e.image)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
