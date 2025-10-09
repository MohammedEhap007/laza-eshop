import 'package:flutter/material.dart';
import 'package:laza_eshop/core/routes/app_router.dart';

class LazaEshop extends StatelessWidget {
  const LazaEshop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laza Eshop',
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
