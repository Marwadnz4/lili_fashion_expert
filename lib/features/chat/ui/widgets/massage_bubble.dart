import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';
import 'package:lili_fashion_expert/core/theming/styles.dart';
import 'package:lili_fashion_expert/features/chat/data/models/chat_message_model.dart';

class MassageBubble extends StatelessWidget {
  final Message message;
  const MassageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        decoration: BoxDecoration(
          color: message.isUser
              ? ColorsManager.darkBlue
              : ColorsManager.darkPurple,
          borderRadius:! message.isUser
              ? BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(20.r),
                  topLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
        ),
        child: Text(
          message.message,
          style: message.isUser
              ? TextStyles.font20LightBlue
              : TextStyles.font20LightPurple,
        ),
      ),
    );
  }
}
