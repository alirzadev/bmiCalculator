import 'dart:math';

import 'package:bmicalculator/custom_widgets/custom_button.dart';
import 'package:bmicalculator/custom_widgets/custom_card.dart';
import 'package:bmicalculator/custom_widgets/custom_icon_button.dart';
import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;
  double height = 120;
  int weight = 70;
  int age = 25;

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
                      onPressed: () {},
                      width: 45,
                      height: 45,
                      icon: FontAwesome.bell_o,
                      iconColor: Theme.of(context).accentColor,
                    ),
                    Text(
                      'BMI Calculator',
                      style: TextStyle(
                        color: itemColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomIconButton(
                      onPressed: () {},
                      width: 45,
                      height: 45,
                      icon: FontAwesome.user_o,
                      iconColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomButton(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                          print('Male was selected!');
                        });
                      },
                      text: 'Male',
                      textColor: selectedGender == Gender.male
                          ? Colors.white
                          : Colors.grey,
                      gradient: selectedGender == Gender.male
                          ? LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xFF56D0DB),
                                Color(0xFF59C8E3),
                              ],
                            )
                          : LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xFFF0EEF3),
                                Color(0xFFF0EEF3),
                              ],
                            ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      text: 'Female',
                      textColor: selectedGender == Gender.female
                          ? Colors.white
                          : Colors.grey,
                      gradient: selectedGender == Gender.female
                          ? LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xFF56D0DB),
                                Color(0xFF59C8E3),
                              ],
                            )
                          : LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xFFF0EEF3),
                                Color(0xFFF0EEF3),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 50,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: foregroundColor,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: neumorphicShadow,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Height',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Transform.rotate(
                              angle: 3 * pi / 2,
                              child: Slider(
                                min: 120,
                                max: 220,
                                divisions: 10,
                                value: height,
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: CustomCard(
                                onPressedAdd: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                onPressedRemove: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                text: 'Weight',
                                number: weight.toString(),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Expanded(
                              child: CustomCard(
                                onPressedAdd: () {
                                  setState(() {
                                    age++;
                                    print(age);
                                  });
                                },
                                onPressedRemove: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                text: 'Age',
                                number: age.toString(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              CustomButton(
                text: 'Lets Begin',
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
              SizedBox(height: 30.0)
            ],
          ),
        ),
      ),
    );
  }
}
