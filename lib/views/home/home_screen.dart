import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/constants/strings.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:sizer/sizer.dart';
import '../../utils/database.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.onHideBottomNavBar,
  });

  final void Function(bool) onHideBottomNavBar;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool firstAnimEnd = false;
  bool secondAnimEnd = false;
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
              // const HomeFeelings(),
              SizedBox(
                height: 15.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 15.h,
                      width: 20.w,
                      color: $styles.colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 10.h,
                            width: 20.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular($styles.insets.sm),
                              ),
                              color: DB.feelings()[index].color,
                            ),
                            child: SvgPicture.asset(
                              DB.feelings()[index].image,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            DB.feelings()[index].label,
                            style: $styles.textStyles.bodyRegular,
                          ),
                        ],
                      ),
                    ).animate(
                      onComplete: (_) {
                        setState(() {
                          firstAnimEnd = true;
                        });
                      },
                    ).slideX(
                      duration: Duration(milliseconds: (800 + (index * 100))),
                      begin: 2,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 5.w),
                  itemCount: 4,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                Strings.todayTask,
                style: $styles.textStyles.labelSmallRegular,
              ),
              SizedBox(height: 2.h),
              // const HomeTasks(),
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
                            height: 22.h,
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
                                    SizedBox(
                                      width: 50.w,
                                      child: Text(
                                        e.description,
                                        style:
                                            $styles.textStyles.bodySmallRegular,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    const Spacer(),
                                    SvgPicture.asset(e.image)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      e.begin,
                                      style: $styles.textStyles.bodyLargeBold
                                          .copyWith(
                                        color: e.color,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(width: $styles.insets.small),
                                    if (e.isReady)
                                      SvgPicture.asset(Assets.isReady),
                                    if (!e.isReady)
                                      SvgPicture.asset(Assets.isComming),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList()
                        .animate(
                          interval: const Duration(milliseconds: 500),
                          onComplete: (_) {
                            setState(() {
                              secondAnimEnd = true;
                            });
                            if (firstAnimEnd) {
                              widget.onHideBottomNavBar(false);
                            }
                          },
                        )
                        .slideY(
                          begin: 2,
                          duration: const Duration(milliseconds: 800),
                        ),
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
