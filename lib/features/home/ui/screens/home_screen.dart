import 'package:flutter/material.dart';

import 'widgets/drawer/custom_home_screen_drawer.dart';
import 'widgets/home_components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreenBody(),
      drawer: const CustomHomeScreenDrawer(),
      drawerScrimColor: Theme.of(
        context,
      ).colorScheme.surface.withValues(alpha: 0.2),
      drawerBarrierDismissible: false,
      drawerEnableOpenDragGesture: false,
    );
  }
}
