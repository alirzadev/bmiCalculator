import 'package:bmicalculator/custom_widgets/custom_button.dart';
import 'package:bmicalculator/custom_widgets/custom_icon_button.dart';
import 'package:bmicalculator/custom_widgets/info_card.dart';
import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class InfoPage extends StatelessWidget {
  final String bmi;
  final String resultText;

  InfoPage({this.bmi, this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          color: backgroundColor,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomIconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      width: 45,
                      height: 45,
                      icon: FontAwesome.angle_left,
                    ),
                    Text(
                      'BMI Info',
                      style: TextStyle(
                        color: darkTextColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomIconButton(
                      onPressed: () {},
                      width: 45,
                      height: 45,
                      icon: FontAwesome.user_o,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: foregroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: outerShadow,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Your BMI',
                        style: TextStyle(
                          color: darkTextColor,
                        ),
                      ),
                      Text(
                        bmi,
                        style: TextStyle(
                          color: darkTextColor,
                          fontSize: 48.0,
                        ),
                      ),
                      Text(
                        resultText,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: foregroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: outerShadow,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InfoCard(
                        lowerBMI: 'Less than 18.5',
                        bmiResult: 'Underweight',
                      ),
                      Divider(height: 40.0),
                      InfoCard(
                        lowerBMI: '18.5',
                        upperBMI: '24.5',
                        bmiResult: 'Normal',
                      ),
                      Divider(height: 40.0),
                      InfoCard(
                        lowerBMI: '25',
                        upperBMI: '29.5',
                        bmiResult: 'Overweight',
                      ),
                      Divider(height: 40.0),
                      InfoCard(
                        lowerBMI: 'More than 29.5',
                        bmiResult: 'Obesity',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              CustomButton(
                onPressed: () {},
                width: 200,
                text: 'Save Results',
                textColor: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xFF56D0DB),
                    Color(0xFF59C8E3),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
