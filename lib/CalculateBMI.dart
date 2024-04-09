import "dart:math";

class CalculateBMI {
  double _height = 0;
  double _weight = 0;
  double _bmi = 0;

  CalculateBMI({required double height, required double weight}) {
    _weight = weight;
    _height = height / 100;
  }

  double _calcBMI() {
    _bmi = (_weight / pow(_height, 2));
    return _bmi;
  }

  double getBMI() {
    return _calcBMI();
  }

  String getSitu() {
    if (_bmi <= 18.5) {
      return 'Under Weight';
    }
    if (_bmi <= 24.9) {
      return 'Normal';
    }
    if (_bmi <= 29.9) {
      return 'Over Weight';
    }
    return 'Obesity';
  }

  String getRange() {
    if (_bmi <= 18.5) {
      return 'Your BMI is less than 18.5';
    }
    if (_bmi <= 24.9) {
      return 'Your BMI is between 18.5–24.9 range';
    }
    if (_bmi <= 29.9) {
      return 'Your BMI is between 25–29.9 range';
    }
    return 'You have a BMI of 30 or greater';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  /* Underweight = <18.5
    Normal weight = 18.5–24.9
    Overweight = 25–29.9
    Obesity = BMI of 30 or greater */
}
