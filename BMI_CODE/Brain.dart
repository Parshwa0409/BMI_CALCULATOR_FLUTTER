// ignore_for_file: file_names
import 'dart:math';

class Brain {
  Brain({required this.height, required this.weight});
  int height;
  int weight;
  double? bmi; //default value
  double refBMI = 0;

  double? calculate() {
    height = height == 0 ? 1 : height;
    bmi = weight / pow((height / 100), 2);
    return bmi;
  }

  String recommendation(double _bmi) {
    if (_bmi > 30) {
      return 'Let\'s Build early relationships with healthy foods and get fit 😁';
    } else if (_bmi > 25) {
      return 'Engaging in moderate physical activity, progressing to 30 minutes or more on most or preferably all days of the week, will make you fit and fine.';
    } else if (_bmi > 18) {
      return 'You are fine like wine 😜';
    } else {
      return 'Treat your self with great treats , healthy carbs and snacks regularly to get that extra pounds';
    }
  }

  String category(double _bmi) {
    if (_bmi > 40) {
      return 'OBESE - III';
    } else if (_bmi > 35) {
      return 'OBESE - II';
    } else if (_bmi > 30) {
      return 'OBESE - I';
    } else if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18) {
      return 'HEALTHY';
    } else {
      return 'UNDERWEIGHT';
    }
  }
}

// If your _bmi is less than 18.5, it falls within the underweight range.
// If your _bmi is 18.5 to <25, it falls within the healthy weight range.
// If your _bmi is 25.0 to <30, it falls within the overweight range.
// If your _bmi is 30.0 or higher, it falls within the obesity range.
// Obesity is frequently subdivided into categories:

// Class 1: _bmi of 30 to < 35
// Class 2: _bmi of 35 to < 40
// Class 3: _bmi of 40 or higher. Class 3 obesity is sometimes categorized as “severe” obesity.