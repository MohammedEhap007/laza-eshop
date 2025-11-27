import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_eshop/features/home/data/models/products_item_model.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/products/product_item.dart';
import '../../features/auth/ui/cubits/sign_up_cubit/sign_up_cubit.dart';

import '../../features/auth/ui/cubits/login_cubit/login_cubit.dart';
import '../../features/auth/ui/cubits/verify_email_cubit/verify_email_cubit.dart';
import '../../features/auth/ui/screens/login_screen.dart';
import '../../features/auth/ui/screens/sign_up_screen.dart';
import '../../features/auth/ui/screens/verification_code_screen.dart';
import '../../features/home/ui/screens/home_screen.dart';
import '../../features/home/ui/screens/main_screen.dart';
import '../../features/home/ui/screens/product_details_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';
import '../di/dependency_injection.dart';

import 'router_transitions.dart';
import 'routes.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return RouterTransitions.navigateFade(
          const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return RouterTransitions.navigateHorizontal(
          BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return RouterTransitions.navigateHorizontal(
          BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.verificationCodeScreen:
        final email = arguments as String?;
        return RouterTransitions.navigateHorizontal(
          BlocProvider(
            create: (context) => getIt<VerifyEmailCubit>(),
            child: VerificationCodeScreen(email: email ?? ''),
          ),
        );
      case Routes.mainScreen:
        return RouterTransitions.navigateFade(
          const MainScreen(),
        );
      case Routes.productDetailsScreen:
        final product = arguments as ProductsItemModel;
        return RouterTransitions.navigate(
          ProductDetailsScreen(product: product),
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
