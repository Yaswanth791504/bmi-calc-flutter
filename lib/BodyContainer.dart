import 'package:body_mass_index/CalculateBMI.dart';
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
  double _height = 50.0;
  double _weight = 50.0;
  int _age = 20;

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
                            size: 140.0,
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
                            size: 140.0,
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
                    Text(
                      '${_height.toStringAsFixed(1)} cm',
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
                        value: _height,
                        max: 200.0,
                        min: 10.0,
                        onChanged: (value) {
                          setState(() {
                            _height = value;
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
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ScalableContainer(
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(
                            color: inActiveTabColor,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          _age.toStringAsFixed(0),
                          style: TextStyle(
                            color: activeTabColor,
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF1d1f31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              },
                              elevation: 10.0,
                              child: const Icon(
                                Icons.add,
                                size: 40.0,
                              ),
                            ),
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF1d1f31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
                              elevation: 10.0,
                              child: const Icon(
                                Icons.remove,
                                size: 40.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ScalableContainer(
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(
                            color: inActiveTabColor,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          _weight.toStringAsFixed(0),
                          style: TextStyle(
                            color: activeTabColor,
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF1d1f31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                              elevation: 10.0,
                              child: const Icon(
                                Icons.add,
                                size: 40.0,
                              ),
                            ),
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF1d1f31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                              elevation: 10.0,
                              child: const Icon(
                                Icons.remove,
                                size: 40.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/bmi',
                arguments: CalculateBMI(height: _height, weight: _weight),
              );
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
          )
        ],
      ),
    );
  }
}
