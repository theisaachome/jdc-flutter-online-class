import 'package:flutter/material.dart';
import 'package:taskapp/src/core/presentation/data/todo-model.dart';
import 'package:taskapp/src/core/presentation/provider/todo-provider.dart';
import 'package:taskapp/src/core/utils/constants/app-keys.dart';

class AddEditScreen extends StatefulWidget {
  final TodoModel todo;

  AddEditScreen({
    Key key,
    this.todo,
  }) : super(key: key ?? AppKeys.addTodoScreen);
  @override
  _AddEditScreenState createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _task;
  String _note;

  @override
  Widget build(BuildContext context) {
    final container = TodoProvider.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEditing ? "edit Todo" : "add Todo",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          onWillPop: () {
            return Future(() => true);
          },
          child: ListView(
            children: [
              TextFormField(
                initialValue: isEditing ? widget.todo.task : '',
                key: AppKeys.taskField,
                autofocus: !isEditing,
                style: Theme.of(context).textTheme.headline6,
                decoration: InputDecoration(
                  hintText: "Task Name",
                ),
                validator: (val) {
                  return val.trim().isEmpty ? "Can not be Empty" : null;
                },
                onSaved: (value) => _task = value,
              ),
              TextFormField(
                initialValue: isEditing ? widget.todo.note : '',
                key: AppKeys.noteField,
                maxLines: 10,
                style: textTheme.subtitle1,
                decoration: InputDecoration(
                  hintText: "Some Description for Task",
                ),
                onSaved: (value) => _note = value,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: isEditing ? AppKeys.saveTodoFab : AppKeys.saveNewTodo,
        tooltip: isEditing ? "saveChanges " : "addTodo",
        child: Icon(isEditing ? Icons.check : Icons.add),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();

            if (isEditing) {
              container.updateToDo(widget.todo, task: _task, note: _note);
            } else {
              container.addToDo(TodoModel(
                _task,
                note: _note,
              ));
            }

            Navigator.pop(context);
          }
        },
      ),
    );
  }

  bool get isEditing => widget.todo != null;
}
