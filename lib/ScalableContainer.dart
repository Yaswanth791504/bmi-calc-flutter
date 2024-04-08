import 'package:flutter/material.dart';

class ScalableContainer extends StatefulWidget {
  const ScalableContainer({super.key});

  @override
  State<ScalableContainer> createState() => _ScalableContainerState();
}

class _ScalableContainerState extends State<ScalableContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1d1f32),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Data 1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
