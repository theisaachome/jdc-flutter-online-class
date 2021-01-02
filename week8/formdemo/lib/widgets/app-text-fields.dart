import 'package:flutter/material.dart';

typedef Validator = String Function(String);

class AppTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData icon;
  final String prefix;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Validator validator;

  const AppTextField({
    Key key,
    @required this.controller,
    @required this.validator,
    this.textInputType = TextInputType.text,
    @required this.label,
    @required this.hintText,
    @required this.icon,
    @required this.prefix,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: label,
          prefix: Text(prefix != null ? prefix : ""),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
