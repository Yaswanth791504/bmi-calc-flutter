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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                flex: 10,
                child: BodyContainer(),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/bmi');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'CALCULATE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
