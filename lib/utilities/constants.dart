import 'package:flutter/material.dart';

Color backgroundColor = Color(0xFFF0EEF3);
Color darkTextColor = Color(0xFF5B6275);
Color lightTextColor = Colors.grey;
Color foregroundColor = Color(0xFFF0EEF3);

var outerShadow = [
  BoxShadow(
    blurRadius: 3.0,
    offset: Offset(-2, -2),
    color: Colors.white.withOpacity(0.7),
  ),
  BoxShadow(
    blurRadius: 3.0,
    offset: Offset(2, 2),
    color: Colors.black.withOpacity(0.15),
  ),
];
