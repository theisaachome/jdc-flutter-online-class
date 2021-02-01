import 'package:flutter/material.dart';
import 'package:taskapp/src/core/utils/constants/app-keys.dart';
import 'package:taskapp/src/core/utils/enum/app-enum.dart';

class ExtraActionsButton extends StatelessWidget {
  final PopupMenuItemSelected<ExtraAction> onSelected;
  final bool allComplete;
  final bool hasCompletedTodos;

  ExtraActionsButton({
    this.onSelected,
    this.allComplete = false,
    this.hasCompletedTodos = true,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ExtraAction>(
      key: AppKeys.extraActionsButton,
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return <PopupMenuItem<ExtraAction>>[
          PopupMenuItem<ExtraAction>(
            key: AppKeys.toggleAll,
            value: ExtraAction.markAllCompleted,
            child: Text(
              allComplete ? "Mark All Incomplete" : "Mark All Complete",
            ),
          ),
          PopupMenuItem<ExtraAction>(
            key: AppKeys.clearCompleted,
            value: ExtraAction.clearCompleted,
            child: Text(
              "Clear Completed",
            ),
          ),
        ];
      },
    );
  }
}
