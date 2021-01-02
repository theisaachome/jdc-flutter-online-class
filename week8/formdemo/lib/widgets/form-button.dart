import 'package:flutter/material.dart';
import 'package:formdemo/widgets/app-custom-button.dart';

class FormButton extends AppCustomButton {
  FormButton({
    @required String label,
    @required VoidCallback onPressed,
  }) : super(
            color: Colors.tealAccent,
            child: Text(label),
            textColor: Colors.black,
            onPressed: onPressed,
            height: 45.0);
}
