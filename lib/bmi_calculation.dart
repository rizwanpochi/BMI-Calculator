import 'package:flutter/cupertino.dart';
import 'dart:math';

class Calculation {
  Calculation({@required this.weight, @required this.height});

  final int height;
  final int weight;

  double _BMIscore = 0;

  void calculateBMI() {
    _BMIscore = (weight / pow(height / 100, 2));
  }

  String BMI() {
    return _BMIscore.toStringAsFixed(1);
  }

  String BMItag() {
    if (_BMIscore >= 25) {
      return 'over weight';
    } else if (_BMIscore > 18.5) {
      return 'normal';
    } else
      return 'under weight';
  }

  String BMIinterpretation() {
    print('BMI SCore --- $_BMIscore');
    if (_BMIscore >= 25) {
      return 'You have a higher than body weight,Try to exercise more.!';
    } else if (_BMIscore > 18.5) {
      return 'You have a normal body weight, Good Job!';
    } else
      return 'You have a lower than body weight,Try to eat more!';
  }
}
