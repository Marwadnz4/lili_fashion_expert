import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lili_fashion_expert/core/helpers/extensions.dart';
import 'package:lili_fashion_expert/core/networking/api_error_model.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_cubit.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_state.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ChatBlocListener extends StatelessWidget {
  const ChatBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatCubit, ChatState>(
      listenWhen: (previous, current) =>
          current is ChatLoading ||
          current is ChatSuccess ||
          current is ChatError,
      listener: (context, state) {
        state.whenOrNull(
          chatLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          chatSuccess: (ChatResponse) {
            // context.pop();
            // context.pushNamed(Routes.homeScreen);
          },
          chatError: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          apiErrorModel.getAllErrorMessages(),
          style: TextStyles.font18SecondBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font13BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
