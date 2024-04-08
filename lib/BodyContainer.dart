import 'package:flutter/material.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'data',
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
