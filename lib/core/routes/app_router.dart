import 'package:flutter/material.dart';
import 'package:laza_eshop/core/routes/router_transitions.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this (arguments as ClassName)
    //final arguments = settings.arguments;

    switch (settings.name) {
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
