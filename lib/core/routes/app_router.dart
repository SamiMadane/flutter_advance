import 'package:flutter/material.dart';
import 'package:flutter_advance/core/di/dependency_injection.dart';
import 'package:flutter_advance/core/routes/routes.dart';
import 'package:flutter_advance/feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/feature/home/ui/views/home_screen.dart';
import 'package:flutter_advance/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/feature/login/ui/views/login_screen.dart';
import 'package:flutter_advance/feature/onboarding/ui/views/onboarding_screen.dart';
import 'package:flutter_advance/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advance/feature/signup/ui/views/signup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;
    
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: const SignupScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => HomeCubit(getIt())..getSpecializations(),
                child: const HomeScreen(),
              ),
        );
      default:
        return null;
    }
  }
}
