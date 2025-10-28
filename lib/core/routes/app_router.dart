import 'package:flutter/material.dart';

import '../../features/auth/ui/screens/login_screen.dart';
import '../../features/auth/ui/screens/signup_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';

import 'router_transitions.dart';
import 'routes.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this (arguments as ClassName)
    //final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return RouterTransitions.navigateFade(
          const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return RouterTransitions.navigateHorizontal(
          const LoginScreen(),
        );
      case Routes.signUpScreen:
        return RouterTransitions.navigateHorizontal(
          const SignupScreen(),
        );
      default:
        return RouterTransitions.navigate(
          const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}
