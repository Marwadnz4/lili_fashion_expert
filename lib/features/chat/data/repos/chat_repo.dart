import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:lili_fashion_expert/core/networking/api_error_handler.dart';
import 'package:lili_fashion_expert/core/networking/api_result.dart';
import 'package:lili_fashion_expert/core/networking/gemini_service.dart';

class ChatRepo {
  final GeminiService _geminiService;

  ChatRepo(this._geminiService);

  Future<ApiResult<GenerateContentResponse>> setupRole() async {
    try {
      final content = await _geminiService.setupRole();
      return ApiResult.success(content);
    } catch (error) {
      print(error);
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<GenerateContentResponse>> generateContent(
      String message) async {
    try {
      final content = await _geminiService.generateContent(message);
      return ApiResult.success(content);
    } catch (error) {
      print(error);
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
