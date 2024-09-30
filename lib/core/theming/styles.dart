import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';
import 'package:lili_fashion_expert/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font20LightPurple = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightPurple,
  );

  static TextStyle font20LightBlue = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightBlue,
  );

  static TextStyle font20MainBlueBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font24PinkBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.pink,
  );

  static TextStyle font18SecondBlueMedium = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.secondBlue,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );


}
