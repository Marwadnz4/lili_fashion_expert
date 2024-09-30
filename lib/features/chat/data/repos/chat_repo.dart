import 'package:lili_fashion_expert/core/networking/api_error_handler.dart';
import 'package:lili_fashion_expert/core/networking/api_result.dart';
import 'package:lili_fashion_expert/core/networking/api_service.dart';
import 'package:lili_fashion_expert/features/chat/data/models/chat_request_body.dart';
import 'package:lili_fashion_expert/features/chat/data/models/chat_response.dart';

class ChatRepo {
  final ApiService _apiService;

  ChatRepo(this._apiService);

  Future<ApiResult<ChatResponse>> chat(
      ChatRequestBody chatRequestBody) async {
    try {
      final response = await _apiService.chat(chatRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
