import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statedemo/models/wish-model.dart';
import 'package:statedemo/notifers/Counter-notifier.dart';
import 'package:statedemo/notifers/wish-notifier.dart';

class SelectorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterNotifier>(context, listen: false);
    print("Rebuild Counter Parent");
    return Scaffold(
      appBar: AppBar(
        title: Text("Selector Demo"),
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
            Selector<CounterNotifier, int>(
              selector: (context, notifier) => notifier.count,
              builder: (context, count, _) {
                return _CounterWidget(
                  count: count,
                );
              },
            ),
            Selector<WishNotifier, Wish>(builder: (context, value, child) {
              return Text(value.note);
            }, selector: (context, notifier) {
              return notifier.getWishes.firstWhere((wish) => wish.note != null);
            }),
          ],
        ),
      ),
    );
  }
}

class _CounterWidget extends StatelessWidget {
  final int count;

  const _CounterWidget({Key key, this.count}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      "$count",
      style: TextStyle(fontSize: 60),
    );
  }
}
