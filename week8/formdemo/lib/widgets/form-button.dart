import 'package:flutter/material.dart';
import 'package:formdemo/widgets/app-custom-button.dart';

class FormButton extends AppCustomButton {
  FormButton({
    @required String label,
    @required VoidCallback onPressed,
  }) : super(
            color: Colors.teal,
            child: Text(label),
            textColor: Colors.white,
            onPressed: onPressed,
            height: 45.0);
}
