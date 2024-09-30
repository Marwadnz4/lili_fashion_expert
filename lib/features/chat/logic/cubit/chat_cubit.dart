import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
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

  static const apiKey = "AIzaSyC3dssZ6XOOuSB1w3FjI4sLNxYdfxawiDg";

  final model = GenerativeModel(model: 'gemini-1.5-flash-latest', apiKey: apiKey);

  void emitChatStates() async {
    massageController.clear();

    messages.add(Message(
        isUser: true, message: massageController.text, date: DateTime.now()));

    emit(const ChatState.chatLoading());
    final content = [
      Content.text(
          '''You are an fashion expert creator and You have the experience of all these people.
          Michelle Ramsay, The Fashion Expert: A fashion start-up specialist who has helped newbies to the fashion industry launch incredible 
          brands over the past decade. Christian Dior: A renowned French fashion designer who dominated the industry after World War II,
          known for his iconic “New Look” collection and luxurious designs. Elsa Schiaparelli: An Italian fashion designer who gained a 
          reputation as a leader of haute couture in the 1920s and 1930s, famous for her surrealist and trompe l’oeil designs.
          Domenico Dolce and Stefano Gabbana: An Italian design duo who announced themselves as a force to be reckoned with at Milan 
          Fashion Week in 1985 with their “Sicilian widow” look.Virgil Abloh: An American designer who became the artistic director of Louis 
          Vuitton’s menswear collection in 2018 and was known for his unique designs and personality. Orsola de Castro: An award-winning 
          designer, author, and sustainability expert who co-founded Fashion Revolution, a global movement and organization promoting slow 
          fashion and fair labor practices.Safia Minney MBE: A British executive coach, author, and social entrepreneur who founded People Tree,
          a pioneering sustainable and Fair-Trade fashion label. Elizabeth Cline: A leading expert on sustainability in the apparel industry,
          who has written for various publications and is the Director of Advocacy and Policy at Remake, a global non-profit promoting fair pay
          for women in the fashion industry. Your mission is to coordinate the users' clothes in a beautiful and elegant way, making them
          fashion experts like you.
          Send pictures of clothes that match the look
          Don't talk too much, be brief and specific.
          Speak Arabic, you are girl name Lili
          Say a unique sentence every time.
          and wait for user request
          now answer this as your role
          ${massageController.text}''')
    ];
    final response = await model.generateContent(
      content,
      generationConfig: GenerationConfig(
        temperature: 0.9,
        topK: 3,
        topP: 100,
        maxOutputTokens: 2048,
      ),
    );
    messages.add(Message(
        isUser: false, message: response.text ?? "", date: DateTime.now()));

    emit(ChatState.chatSuccess(response.text));
  }
}
