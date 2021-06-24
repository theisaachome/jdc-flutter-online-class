import 'package:flutter/material.dart';
import 'package:taskapp/src/core/presentation/data/todo-model.dart';
import 'package:taskapp/src/core/presentation/provider/todo-provider.dart';
import 'package:taskapp/src/core/utils/constants/app-keys.dart';
import 'package:taskapp/src/features/screens/todos/todo-edit.dart';

class DetailScreen extends StatelessWidget {
  final TodoModel todo;

  DetailScreen({
    @required this.todo,
  }) : super(key: AppKeys.todoDetailsScreen);

  @override
  Widget build(BuildContext context) {
    final container = TodoProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Details"),
        actions: [
          IconButton(
            key: AppKeys.deleteTodoButton,
            tooltip: "deleteTodo",
            icon: Icon(Icons.delete),
            onPressed: () {
              container.removeTodo(todo);
              Navigator.pop(context, todo);
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Checkbox(
                    value: todo.complete,
                    key: AppKeys.detailsTodoItemCheckbox,
                    onChanged: (complete) {
                      container.updateToDo(todo, complete: !todo.complete);
                    },
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                          bottom: 16.0,
                        ),
                        child: Text(
                          todo.task,
                          key: AppKeys.detailsTodoItemTask,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Text(
                        todo.note,
                        key: AppKeys.detailsTodoItemNote,
                        style: Theme.of(context).textTheme.subtitle1,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Edit Todo",
        child: Icon(Icons.edit),
        key: AppKeys.editTodoFab,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return AddEditScreen(
                  todo: todo,
                  key: AppKeys.editTodoScreen,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
