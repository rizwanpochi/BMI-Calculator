import 'package:flutter/material.dart';
import 'constants.dart';

class BottomWidget extends StatelessWidget {
  BottomWidget({this.buttonText, this.noButtonTap});

  final Function noButtonTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: noButtonTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 5),
        color: kbottomContainerColour,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: kbottomContainerHeight,
      ),
    );
  }
}
