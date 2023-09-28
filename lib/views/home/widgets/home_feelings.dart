import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:mental_health_fitness_ui/utils/database.dart';
import 'package:sizer/sizer.dart';

class HomeFeelings extends StatelessWidget {
  const HomeFeelings({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
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
          ).animate().slideX(
                duration: Duration(milliseconds: (300 + (index * 100))),
                begin: 2,
              );
        },
        separatorBuilder: (context, index) => SizedBox(width: 5.w),
        itemCount: 4,
      ),
    );
  }
}
