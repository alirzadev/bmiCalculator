import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TIpsCard extends StatelessWidget {
  final String tipText;
  final IconData icon;

  TIpsCard({this.tipText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 80,
      decoration: BoxDecoration(
        color: foregroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: outerShadow,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFDEE2E5),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Icon(
              icon,
              size: 36,
              color: darkTextColor,
            ),
          ),
          SizedBox(width: 10.0),
          Text(
            tipText,
            style: TextStyle(
              color: darkTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: SizedBox(width: 5)),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: darkTextColor,
          ),
        ],
      ),
    );
  }
}
