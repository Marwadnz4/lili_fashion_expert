import 'package:flutter/material.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';
import 'package:lili_fashion_expert/core/theming/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String?) validator;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: ColorsManager.lightBlue,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: null,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        hintStyle: TextStyles.font20LightBlue,
        hintText: hintText,
      ),
      style: TextStyles.font20LightBlue,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
