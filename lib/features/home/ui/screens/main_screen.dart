import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';
import 'package:laza_eshop/core/widgets/custom_app_bottom_navigation_bar.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreenIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: currentScreenIndex,
          children: screens,
        ),
      ),
      bottomNavigationBar: CustomAppBottomNavigationBar(
        onItemTapped: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
      ),
    );
  }
}
