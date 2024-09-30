import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_cubit.dart';
import 'package:lili_fashion_expert/features/chat/ui/widgets/massage_bubble.dart';
import 'package:lili_fashion_expert/features/chat/ui/widgets/massages_list.dart';
import 'package:lili_fashion_expert/features/chat/ui/widgets/send_massage_field.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.h),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 80.h,
                    ),
                    horizontalSpace(10),
                    Text(
                      'خبيرة الموضة ليلي',
                      style: TextStyles.font24PinkBold,
                    ),
                  ],
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: MassageBubble(
                    text: 'هيا بنا لنتكلم عن الموضة و تنسيقات الملابس',
                    isUser: false,
                  ),
                ),
                const Expanded(
                  child: MassagesList(),
                ),
                const SendMassageField(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoChat(BuildContext context) {
    if (context.read<ChatCubit>().formKey.currentState!.validate()) {
      context.read<ChatCubit>().emitChatStates();
    }
  }
}
