import 'package:get_it/get_it.dart';
import 'package:lili_fashion_expert/core/networking/gemini_service.dart';

import '../../features/chat/data/repos/chat_repo.dart';
import '../../features/chat/logic/cubit/chat_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Gemini & GeminiService

  getIt.registerLazySingleton<GeminiService>(() => GeminiService());

  // login
  getIt.registerLazySingleton<ChatRepo>(() => ChatRepo(getIt()));
  getIt.registerFactory<ChatCubit>(() => ChatCubit(getIt()));
}
