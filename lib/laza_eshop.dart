import 'package:flutter/material.dart';

class LazaEshop extends StatelessWidget {
  const LazaEshop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laza Eshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Laza Eshop Home Page'),
        ),
        body: Center(
          child: Text('Welcome to Laza Eshop!'),
        ),
      ),
    );
  }
}
