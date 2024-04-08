import 'package:flutter/material.dart';

class ScalableContainer extends StatelessWidget {
  const ScalableContainer({super.key, required this.childWidget});

  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1d1f32),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        flex: 1,
        child: childWidget,
      ),
    );
  }
}
