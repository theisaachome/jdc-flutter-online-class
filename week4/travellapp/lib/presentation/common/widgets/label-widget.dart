import 'package:flutter/material.dart';
import 'package:travellapp/presentation/common/shared/app-style.dart';

class LabelWidget extends StatelessWidget {
  final String value1;
  final String value2;

  const LabelWidget({Key key, this.value1, this.value2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          value1,
          style: labelStyle,
        ),
        Text(
          value2,
          style: moreStyle,
        ),
      ],
    );
  }
}
