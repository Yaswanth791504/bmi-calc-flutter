import 'package:body_mass_index/BodyContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        shadowColor: Colors.black,
        elevation: 20.0,
        backgroundColor: const Color(0xFF0b0d21),
        surfaceTintColor: const Color(0xFF0b0d21),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            BodyContainer(),
          ],
        ),
      ),
    );
  }
}
