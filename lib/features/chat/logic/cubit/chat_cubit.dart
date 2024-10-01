import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lili_fashion_expert/core/networking/api_constants.dart';
import 'package:lili_fashion_expert/features/chat/data/models/chat_message_model.dart';
import 'package:lili_fashion_expert/features/chat/data/repos/chat_repo.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepo _chatRepo;
  ChatCubit(this._chatRepo) : super(const ChatState.initial());

  final List<Message> messages = [];

  TextEditingController massageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool imageAvailable = false;
  File? imageFile;
  String? imagePath;
  Uint8List? bytes;

  // void pickImage(XFile? image) async {
  //   imageFile = File(image.path);
  //   imageAvailable = true;
  //   bytes = await image.readAsBytes();
  //   imagePath = imageFile!.path;
  //   emit(const ChatState.pickImage());
  // }

  void setupChat() async {
    emit(const ChatState.chatLoading());
    final response = await _chatRepo.setupRole();
    response.when(success: (chatResponse) async {
      print('+++++++++++++++++++++++++++++${chatResponse.text}');
      messages.add(
        Message(
          isUser: false,
          message:
              chatResponse.text ?? 'هيا بنا لنتكلم عن الموضة و تنسيقات الملابس',
          date: DateTime.now(),
        ),
      );
      emit(const ChatState.updateMassages());
      emit(ChatState.chatSuccess(chatResponse));
    }, failure: (apiErrorModel) {
      emit(ChatState.chatError(apiErrorModel));
    });
  }

  void updateMassages({required bool isUser, required String message}) {
    messages.add(
      Message(
        isUser: isUser,
        message: message,
        date: DateTime.now(),
      ),
    );
    emit(const ChatState.updateMassages());
  }

  void emitChatStates() async {
    updateMassages(isUser: true, message: massageController.text);
    massageController.clear();

    emit(const ChatState.chatLoading());

    final response = await _chatRepo.generateContent(massageController.text);

    response.when(success: (chatResponse) async {
      print('+++++++++++++++++++++++++++++${chatResponse.text}');
      updateMassages(isUser: false, message: chatResponse.text ?? "");

      emit(ChatState.chatSuccess(chatResponse));
    }, failure: (apiErrorModel) {
      emit(ChatState.chatError(apiErrorModel));
    });
  }
}
