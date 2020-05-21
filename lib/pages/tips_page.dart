import 'package:bmicalculator/custom_widgets/custom_icon_button.dart';
import 'package:bmicalculator/custom_widgets/tips_card.dart';
import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          color: backgroundColor,
          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      'Health Tips',
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
              _welcomeNoteWidget(),
              SizedBox(height: 30.0),
              TIpsCard(
                tipText: 'Running',
                icon: FontAwesome5Solid.walking,
              ),
              SizedBox(height: 15.0),
              TIpsCard(
                tipText: 'Cycling',
                icon: FontAwesome5Solid.bicycle,
              ),
              SizedBox(height: 15.0),
              TIpsCard(
                tipText: 'Swimming',
                icon: FontAwesome5Solid.swimmer,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _welcomeNoteWidget() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: foregroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: outerShadow,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15.0),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: foregroundColor,
                shape: BoxShape.circle,
                boxShadow: outerShadow,
              ),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color(0xFF56D0DB),
                      Color(0xFF59C8E3),
                    ],
                  ),
                ),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: foregroundColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hi Buddy!',
                  style: TextStyle(
                    color: darkTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  width: 150,
                  child: Text(
                    'I\'m your mentor to give you good tips',
                    maxLines: 2,
                    style: TextStyle(
                      color: darkTextColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
