import 'package:body_mass_index/BmiShowScreen.dart';
import 'package:body_mass_index/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xFF0b0d21),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomeScreen(),
        '/bmi': (BuildContext context) => const BMIScreen(),
      },
    );
  }
}
