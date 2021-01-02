import './app-custom-button.dart';
import 'package:flutter/material.dart';

class IconButtonLabel extends AppCustomButton {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final double height;
  final double radius;

  IconButtonLabel({
    @required this.label,
    @required this.icon,
    @required this.onPressed,
    this.height = 45.0,
    this.radius = 10,
  })  : assert(
          label != null,
          onPressed != null,
        ),
        super(
            radius: radius,
            textColor: Colors.white,
            height: height,
            color: Colors.black,
            onPressed: onPressed,
            child: Row(
              children: [
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text(label),
                ),
              ],
            ));
}
