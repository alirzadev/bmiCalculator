import 'package:bmicalculator/custom_widgets/custom_icon_button.dart';
import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final VoidCallback onPressedAdd;
  final VoidCallback onPressedRemove;
  final String text;
  final number;

  CustomCard({this.onPressedAdd, this.onPressedRemove, this.text, this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: foregroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: outerShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              color: lightTextColor,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 36.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomIconButton(
                onPressed: onPressedAdd,
                width: 40,
                height: 40,
                icon: Icons.add,
              ),
              CustomIconButton(
                onPressed: onPressedRemove,
                width: 40,
                height: 40,
                icon: Icons.remove,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
