import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      // routes: {
      //   '/': (context) => InputPage(),
      //   '/first': (context) => Results(),
      // },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF272c51),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
