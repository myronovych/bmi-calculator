import 'dart:math';

class BMILogic {
  BMILogic({
    this.weight,
    this.height,
  });

  final weight;
  final height;
  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getGrade() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18)
      return ' Normal';
    else
      return 'Underweight';
  }

  String getRecommendation() {
    if (_bmi > 25)
      return 'You should do more sport and cut donw on weight.';
    else if (_bmi > 18)
      return 'Good BMI! Great job but don\'t forget to stay fit.';
    else
      return 'You should do more sport and gain some musles!';
  }
}
