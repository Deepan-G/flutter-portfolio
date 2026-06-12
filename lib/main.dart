import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/home_screen.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deepan Portfolio',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}