import 'package:flutter/material.dart';
import 'homepage.dart';
import 'constants.dart';

void main() {
  runApp(const CoffeePrima());
}

class CoffeePrima extends StatelessWidget {
  const CoffeePrima({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: heavyColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
