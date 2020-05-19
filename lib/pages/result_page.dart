import 'package:bmicalculator/custom_widgets/custom_icon_button.dart';
import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ResultPage extends StatelessWidget {
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
            ],
          ),
        ),
      ),
    );
  }
}
