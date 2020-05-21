import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class GestureDetectingButton extends StatefulWidget {
  final VoidCallback onPressed;
  final double width;
  final String text;

  GestureDetectingButton({this.onPressed, this.width, this.text});

  @override
  _GestureDetectingButtonState createState() => _GestureDetectingButtonState();
}

class _GestureDetectingButtonState extends State<GestureDetectingButton> {
  bool isPressed = false;

  void whenNotPressed(PointerUpEvent event) {
    setState(() {
      isPressed = false;
    });
  }

  void whenPressed(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerUp: whenNotPressed,
      onPointerDown: whenPressed,
      child: isPressed
          ? GestureDetector(
              onTap: widget.onPressed,
              child: Container(
                width: widget.width,
                height: 50,
                decoration: BoxDecoration(
                  color: foregroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(2, 2),
                      color: Colors.white.withOpacity(0.7),
                    ),
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(-2, -2),
                      color: Colors.white.withOpacity(0.15),
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: foregroundColor,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: foregroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.0,
                          offset: Offset(-2, -2),
                          color: Colors.black.withOpacity(0.15),
                        ),
                        BoxShadow(
                          blurRadius: 2.0,
                          offset: Offset(2, 2),
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.text,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : GestureDetector(
              onTap: widget.onPressed,
              child: Container(
                height: 50,
                width: widget.width,
                decoration: BoxDecoration(
                  color: foregroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: outerShadow,
                ),
                child: Center(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      color: darkTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
