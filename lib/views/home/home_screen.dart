import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/constants/strings.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:mental_health_fitness_ui/views/home/widgets/home_feelings.dart';
import 'package:mental_health_fitness_ui/views/home/widgets/home_tasks.dart';
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
              SizedBox(height: 4.h),
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
              const HomeTasks(),
            ],
          ),
        ),
      ),
    );
  }
}
