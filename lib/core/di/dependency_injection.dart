import 'package:dio/dio.dart';
import 'package:lili_fashion_expert/core/networking/api_service.dart';
import 'package:lili_fashion_expert/core/networking/dio_factory.dart';
import 'package:get_it/get_it.dart';

import '../../features/chat/data/repos/chat_repo.dart';
import '../../features/chat/logic/cubit/chat_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<ChatRepo>(() => ChatRepo(getIt()));
  getIt.registerFactory<ChatCubit>(() => ChatCubit(getIt()));
}
