import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:lili_fashion_expert/core/networking/api_constants.dart';

class GeminiService {
  GenerativeModel geminiProModel = GenerativeModel(
    model: 'gemini-pro',
    apiKey: GeminiConstants.geminiApiKey,
    generationConfig: GenerationConfig(
      temperature: 0.9,
      topK: 3,
      maxOutputTokens: 2048,
    ),
    safetySettings: [
      SafetySetting(HarmCategory.harassment, HarmBlockThreshold.high),
      SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.high),
    ],
  );

  ChatSession? chatSession;

  Future<GenerateContentResponse> setupRole(String message) async {
    chatSession = geminiProModel.startChat();
    GenerateContentResponse generateContentResponse =
        await chatSession!.sendMessage(
      Content.text(
        message,
      ),
    );
    print('++++++++++++++++++$generateContentResponse');
    return generateContentResponse;
  }

  Future<GenerateContentResponse> generateContent(String message) async {
    GenerateContentResponse generateContentResponse =
        await chatSession!.sendMessage(
      Content.text(
        message,
      ),
    );
    print('++++++++++++++++++$generateContentResponse');
    return generateContentResponse;
  }
}
