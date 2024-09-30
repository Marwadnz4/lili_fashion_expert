import 'package:dio/dio.dart';
import 'package:lili_fashion_expert/features/chat/data/models/chat_request_body.dart';
import 'package:lili_fashion_expert/features/chat/data/models/chat_response.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<ChatResponse> chat(ChatRequestBody chatRequestBody) async {
    return ChatResponse();
  }
}
