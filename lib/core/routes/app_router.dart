import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routes/routes.dart';
import 'package:flutter_advance/feature/login/ui/views/login_screen.dart';
import 'package:flutter_advance/feature/onboarding/ui/views/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const onBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return null;
    }
  }
}
