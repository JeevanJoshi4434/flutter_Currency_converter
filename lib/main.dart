import 'package:currency_converter/pages/currency_converter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 1. Material Design
// 2. Cupertino Design
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CurrencyConverter());
  }
}
