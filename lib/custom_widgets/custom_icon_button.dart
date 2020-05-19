import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final IconData icon;
  final Color iconColor;

  CustomIconButton(
      {this.onPressed, this.width, this.height, this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: foregroundColor,
          shape: BoxShape.circle,
          boxShadow: [
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
          ],
        ),
        child: Icon(
          icon,
          size: 20.0,
          color: iconColor,
        ),
      ),
    );
  }
}
