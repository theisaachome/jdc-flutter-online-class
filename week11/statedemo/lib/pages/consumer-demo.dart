import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statedemo/notifers/Counter-notifier.dart';

class ConsumerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterNotifier>(context, listen: false);
    print("Rebuild Counter Parent");
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumer Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                counterProvider.increment();
              },
              child: Text(
                "Press Me",
                style: TextStyle(fontSize: 30),
              ),
            ),
            _CounterWidget(),
          ],
        ),
      ),
    );
  }
}

class _CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Counter Widget");
    return Consumer<CounterNotifier>(
      builder: (context, value, _) {
        return Text(
          "${value.count}",
          style: TextStyle(fontSize: 60),
        );
      },
    );
  }
}
