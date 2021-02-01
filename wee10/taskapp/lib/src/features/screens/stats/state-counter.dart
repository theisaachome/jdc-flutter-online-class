import 'package:flutter/material.dart';
import 'package:taskapp/src/core/presentation/provider/todo-provider.dart';
import 'package:taskapp/src/core/utils/constants/app-keys.dart';

class StatsPage extends StatelessWidget {
  StatsPage() : super(key: AppKeys.statsCounter);
  @override
  Widget build(BuildContext context) {
    final container = TodoProvider.of(context);
    final numCompleted = container.state.numComplete;
    final numActive = container.state.numActive;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Completed Todos",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: Text(
              '$numCompleted',
              key: AppKeys.statsNumCompleted,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Active Todos",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: Text(
              '$numActive',
              key: AppKeys.statsNumActive,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          )
        ],
      ),
    );
  }
}
