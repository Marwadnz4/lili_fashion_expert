import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lili_fashion_expert/core/routing/routes.dart';
import 'package:lili_fashion_expert/features/chat/logic/cubit/chat_cubit.dart';
import 'package:lili_fashion_expert/features/chat/ui/chat_screen.dart';
import 'package:lili_fashion_expert/features/onboarding/onboarding_screen.dart';

import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ChatCubit>(),
            child: const ChatScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
