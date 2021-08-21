import 'dart:math';

class Brain {
  Brain({required this.height, required this.weight});
  late int height;
  late int weight;

  late double _bmi;

  String bmiBrain() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String results() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String interpret() {
    if (_bmi >= 25) {
      return "Your BMI is above the normal BMI.Please exercise some more";
    } else if (_bmi > 18.5) {
      return "Great job keeping a normal BMI";
    } else {
      return "Your BMI is below the normal BMI.Please eat some more";
    }
  }
}
