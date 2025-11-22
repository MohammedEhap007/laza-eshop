import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/dark_theme.dart';
import 'package:laza_eshop/core/themes/light_theme.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/drawer/custom_home_screen_drawer.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/home_components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreenBody(),
      drawer: const CustomHomeScreenDrawer(),
      drawerScrimColor: context.isDarkMode()
          ? AppColors.mainDark.withValues(alpha: 0.2)
          : AppColors.mainLight.withValues(alpha: 0.2),
      drawerBarrierDismissible: false,
      drawerEnableOpenDragGesture: false,
    );
  }
}
