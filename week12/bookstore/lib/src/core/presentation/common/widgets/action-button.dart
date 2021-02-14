import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;
  final double radius;

  const ActionButton({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.onPressed,
    this.radius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          SizedBox(
            width: 6,
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
