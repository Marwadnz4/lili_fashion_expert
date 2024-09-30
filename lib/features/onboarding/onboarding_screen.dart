import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lili_fashion_expert/core/helpers/spacing.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';

import '../../core/theming/styles.dart';
import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorsManager.darkGray,
              ColorsManager.lightGray,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              verticalSpace(5),
              Text(
                '"الموضة لغة. تعلم التحدث بها بطلاقة، \nوسوف تنقل جوهرك للعالم."',
                style: TextStyles.font20MainBlueBold,
                textAlign: TextAlign.center,
              ),
              verticalSpace(20),
              Text(
                'مرحبًا، اسمي ليلي، \nأنا خبيرة في الموضة \nسوف اساعدك في تنسيق اطلالتك',
                style: TextStyles.font20MainBlueBold,
                textAlign: TextAlign.center,
              ),
              verticalSpace(30),
              const GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
