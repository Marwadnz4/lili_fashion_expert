import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lili_fashion_expert/core/helpers/spacing.dart';
import 'package:lili_fashion_expert/core/theming/colors.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_cubit.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_state.dart';
import 'package:lili_fashion_expert/features/chat/ui/widgets/text_form_field.dart';

class SendMassageField extends StatelessWidget {
  const SendMassageField({super.key});

  @override
  Widget build(BuildContext context) {
    ChatCubit cubit = context.read<ChatCubit>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200.r),
        color: ColorsManager.darkBlue,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // InkWell(
          //   onTap: () async {
          //     final ImagePicker picker = ImagePicker();
          //     final XFile? image =
          //         await picker.pickImage(source: ImageSource.gallery);
          //     if (image != null) {}
          //   },
          //   child: Icon(
          //     Icons.image,
          //     size: 30.sp,
          //     color: ColorsManager.lightBlue,
          //   ),
          // ),
          // horizontalSpace(10),
          Expanded(
            child: Form(
              key: cubit.formKey,
              child: CustomTextFormField(
                controller: cubit.massageController,
                hintText: 'اسال عن اي شيء تريد',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid massage';
                  }
                },
              ),
            ),
          ),
          horizontalSpace(10),
          BlocBuilder<ChatCubit, ChatState>(
            buildWhen: (previous, current) =>
                current is ChatLoading || current is ChatSuccess,
            builder: (context, state) {
              if (state is ChatLoading) {
                return const CircularProgressIndicator(
                  color: ColorsManager.lightBlue,
                );
              }
              return InkWell(
                onTap: () {
                  cubit.emitChatStates();
                },
                child: Icon(
                  Icons.send,
                  size: 30.sp,
                  color: ColorsManager.lightBlue,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
