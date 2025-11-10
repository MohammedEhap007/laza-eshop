import 'package:flutter/material.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/custom_home_screen_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          verticalSpace(5),
          const CustomHomeScreenAppBar(),
        ],
      ),
    );
  }
}
