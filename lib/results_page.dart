import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';
import 'round_button.dart';
import 'bottom_button.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.BMIMessage,
      @required this.BMIScore,
      @required this.weightType});

  String weightType;
  String BMIScore;
  String BMIMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    weightType.toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF24D876),
                    ),
                  ),
                  Text(
                    BMIScore,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    BMIMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          BottomWidget(
              noButtonTap: () {
                Navigator.pop(context);
              },
              buttonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
