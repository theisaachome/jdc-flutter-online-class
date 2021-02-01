import 'package:flutter/material.dart';
import 'package:taskapp/src/core/presentation/data/todo-model.dart';
import 'package:taskapp/src/core/utils/constants/app-keys.dart';

class TodoItem extends StatelessWidget {
  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final ValueChanged<bool> onCheckboxChanged;
  final TodoModel todo;

  TodoItem({
    @required this.onDismissed,
    @required this.onTap,
    @required this.onCheckboxChanged,
    @required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: AppKeys.todoItem(todo.id),
      onDismissed: onDismissed,
      child: ListTile(
        onTap: onTap,
        leading: Checkbox(
          key: AppKeys.todoItemCheckbox(todo.id),
          value: todo.complete,
          onChanged: onCheckboxChanged,
        ),
        title: Text(
          todo.task,
          key: AppKeys.todoItemTask(todo.id),
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          todo.note,
          key: AppKeys.todoItemNote(todo.id),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
