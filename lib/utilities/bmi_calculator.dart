import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  int height;
  int weight;
  double bmi;

  String getBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi < 18.5)
      return 'Underweight';
    else if (bmi >= 18.5 && bmi <= 24.9)
      return 'Normal';
    else
      return 'Overweight';
  }

  double getBMIPercentage() {
    double percentage;
    //Above 25 person is overweight so after 29.9 bmi percentage chart will be full 100%
    percentage = bmi / 29.9 * 100;
    return percentage;
  }
}
