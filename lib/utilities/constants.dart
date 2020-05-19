import 'package:flutter/material.dart';

Color backgroundColor = Color(0xFFF0EEF3);
Color itemColor = Color(0xFF5B6275);
Color foregroundColor = Color(0xFFF0EEF3);

var neumorphicShadow = [
  BoxShadow(
    blurRadius: 5.0,
    offset: Offset(-3, -3),
    color: Colors.white.withOpacity(0.7),
  ),
  BoxShadow(
    blurRadius: 5.0,
    offset: Offset(3, 3),
    color: Colors.black.withOpacity(0.15),
  ),
];

LinearGradient biColorGradient = LinearGradient(
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  colors: [
    Color(0xFFF0EEF3),
    Color(0xFFF0EEF3),
  ],
);

LinearGradient uniColorGradient = LinearGradient(
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  colors: [
    Color(0xFF56D0DB),
    Color(0xFF59C8E3),
  ],
);
