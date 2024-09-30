import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_cubit.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_state.dart';
import 'package:lili_fashion_expert/features/chat/ui/widgets/massage_bubble.dart';

class MassagesList extends StatelessWidget {
  const MassagesList({super.key});

  @override
  Widget build(BuildContext context) {
    ChatCubit cubit = context.watch<ChatCubit>();

    return BlocBuilder<ChatCubit , ChatState>(
      buildWhen: (previous, current) => current is UpdateMassages,
      builder: (context, state) =>  ListView.builder(
        itemCount: cubit.messages.length,
        itemBuilder: (context, index) {
          final message = cubit.messages[index];
          return MassageBubble(
            message: message,
            // date: DateFormat('HH:mm').format(message.date),
          );
        },
      ),
    );
  }
}
