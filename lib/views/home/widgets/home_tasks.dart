import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:mental_health_fitness_ui/utils/database.dart';
import 'package:sizer/sizer.dart';

class HomeTasks extends StatelessWidget {
  const HomeTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                              style: $styles.textStyles.bodySmallRegular,
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
                            style: $styles.textStyles.bodyLargeBold.copyWith(
                              color: e.color,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(width: $styles.insets.small),
                          if (e.isReady) SvgPicture.asset(Assets.isReady),
                          if (!e.isReady) SvgPicture.asset(Assets.isComming),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              .toList()
              .animate(interval: const Duration(milliseconds: 300))
              .slideY(
                begin: 2,
                duration: const Duration(milliseconds: 300),
              ),
        ),
      ),
    );
  }
}
