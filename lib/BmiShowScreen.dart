import 'package:body_mass_index/ScalableContainer.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result',
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
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ScalableContainer(
                childWidget: Text('data'),
              ),
            )
          ],
        )),
      ),
    );
  }
}
