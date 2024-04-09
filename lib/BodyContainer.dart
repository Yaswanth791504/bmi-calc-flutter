import 'package:body_mass_index/ScalableContainer.dart';
import 'package:flutter/material.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() => _BodyContainerState();
}

enum Gender { male, female }

Color activeTabColor = Colors.white;
Color inActiveTabColor = const Color(0x6BFFFFFF);

class _BodyContainerState extends State<BodyContainer> {
  Gender _ismale = Gender.male;
  double _sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _ismale = Gender.male;
                      });
                    },
                    child: ScalableContainer(
                      childWidget: Column(
                        children: <Widget>[
                          Icon(
                            Icons.male,
                            size: 150.0,
                            color: _ismale == Gender.male ? activeTabColor : inActiveTabColor,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              color: _ismale == Gender.male ? activeTabColor : inActiveTabColor,
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ScalableContainer(
                    childWidget: GestureDetector(
                      onTap: () {
                        setState(() {
                          _ismale = Gender.female;
                        });
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.female,
                            size: 150.0,
                            color: _ismale == Gender.female ? activeTabColor : inActiveTabColor,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              color: _ismale == Gender.female ? activeTabColor : inActiveTabColor,
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ScalableContainer(
              childWidget: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Height',
                      style: TextStyle(
                        color: inActiveTabColor,
                        fontSize: 25.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${_sliderValue.toStringAsFixed(1)} cm',
                      style: const TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SliderTheme(
                      data: const SliderThemeData().copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: const Color(0x15FFFFFF),
                        thumbColor: Colors.pink,
                        overlayColor: const Color(0x32FF1E1E),
                      ),
                      child: Slider(
                        value: _sliderValue,
                        max: 150.0,
                        min: 10.0,
                        onChanged: (value) {
                          setState(() {
                            _sliderValue = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Expanded(
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
