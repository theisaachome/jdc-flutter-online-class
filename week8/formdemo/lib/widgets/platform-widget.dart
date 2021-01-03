import 'dart:io';
import 'package:flutter/material.dart';

abstract class BasedPlatformWidget extends StatelessWidget {
  Widget buildCupertinoWidget(BuildContext context);
  Widget buildMaterialWidget(BuildContext context);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? buildCupertinoWidget(context)
        : buildMaterialWidget(context);
  }
}
