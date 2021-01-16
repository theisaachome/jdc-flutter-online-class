import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/provider/counter-provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = StateContainer.of(context);
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${counter.count}",
            style: TextStyle(fontSize: 80),
          ),
          TextButton(
              onPressed: counter.increment,
              child: Text(
                "Press Me",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
