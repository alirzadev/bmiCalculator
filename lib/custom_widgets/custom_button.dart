import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final LinearGradient gradient;

  CustomButton(
      {this.onPressed,
      this.width,
      this.text,
      this.textColor,
      this.buttonColor,
      this.gradient});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          gradient: gradient,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: outerShadow,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
