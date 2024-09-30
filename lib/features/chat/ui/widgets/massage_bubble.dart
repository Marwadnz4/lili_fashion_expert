import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';
import 'package:lili_fashion_expert/core/theming/styles.dart';

class MassageBubble extends StatelessWidget {
  final String text;
  final bool isUser;

  const MassageBubble({
    super.key,
    required this.text,
    required this.isUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.r),
          color: isUser ? ColorsManager.darkBlue : ColorsManager.darkPurple,
        ),
        child: Text(
          text,
          style: isUser
              ? TextStyles.font20LightBlue
              : TextStyles.font20LightPurple,
        ),
      ),
    );
  }
}
