import 'package:flutter/material.dart';
import 'package:lili_fashion_expert/core/helpers/extensions.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';
import 'package:lili_fashion_expert/core/theming/styles.dart';

import '../../../core/routing/routes.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.pushNamed(Routes.chatScreen);
      },
      style: ButtonStyle(
        side: const WidgetStatePropertyAll(
          BorderSide(
            color: ColorsManager.secondBlue,
            width: 3,
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
        ),
      ),
      child: Text(
        'هيا لنبدا',
        style: TextStyles.font18SecondBlueMedium,
      ),
    );
  }
}
