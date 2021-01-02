import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final double radius;

  AppCustomButton({
    Key key,
    @required this.color,
    @required this.textColor,
    @required this.child,
    @required this.onPressed,
    this.radius = 8,
    this.height = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: RaisedButton(
          textColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          color: color,
          onPressed: onPressed,
          child: child,
        ));
  }
}
