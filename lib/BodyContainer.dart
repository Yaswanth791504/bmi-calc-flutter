import 'package:body_mass_index/ScalableContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ScalableContainer(
                    childWidget: Text('data'),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ScalableContainer(
                    childWidget: Text('data'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ScalableContainer(
              childWidget: Text('data'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ScalableContainer(
                    childWidget: Text('data'),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ScalableContainer(
                    childWidget: Text('data'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
