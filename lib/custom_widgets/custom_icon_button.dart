import 'package:bmicalculator/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final IconData icon;

  CustomIconButton({this.onPressed, this.width, this.height, this.icon});

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
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
                height: widget.height,
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
                      color: Colors.white.withOpacity(0.15),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: foregroundColor,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: foregroundColor,
                          shape: BoxShape.circle,
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
                        child: Icon(
                          widget.icon,
                          size: 20.0,
                          color: Theme.of(context).accentColor,
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
                width: widget.width,
                height: widget.height,
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
                  widget.icon,
                  size: 20.0,
                  color: darkTextColor,
                ),
              ),
            ),
    );
  }
}

//========= This is the simple icon button design without listener =========\\
//class CustomIconButton extends StatelessWidget {
//  final VoidCallback onPressed;
//  final double width;
//  final double height;
//  final IconData icon;
//
//  CustomIconButton({this.onPressed, this.width, this.height, this.icon});
//
//  @override
//  Widget build(BuildContext context) {
//    return InkWell(
//      onTap: onPressed,
//      child: Container(
//        width: width,
//        height: height,
//        decoration: BoxDecoration(
//          color: foregroundColor,
//          shape: BoxShape.circle,
//          boxShadow: [
//            BoxShadow(
//              blurRadius: 5.0,
//              offset: Offset(-3, -3),
//              color: Colors.white.withOpacity(0.7),
//            ),
//            BoxShadow(
//              blurRadius: 5.0,
//              offset: Offset(3, 3),
//              color: Colors.black.withOpacity(0.15),
//            ),
//          ],
//        ),
//        child: Icon(
//          icon,
//          size: 20.0,
//          color: darkTextColor,
//        ),
//      ),
//    );
//  }
//}
