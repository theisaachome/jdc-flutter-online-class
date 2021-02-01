import 'package:flutter/material.dart';
import 'package:taskapp/src/core/data/repo/todos-repo.dart';
import 'package:taskapp/src/core/presentation/data/todo-model.dart';
import 'package:taskapp/src/core/presentation/provider/app-model.dart';
import 'package:taskapp/src/core/utils/enum/app-enum.dart';

class TodoProvider extends StatefulWidget {
  final Widget child;
  final AppState state;
  final TodosRepository todosRepository;

  TodoProvider({
    Key key,
    @required this.child,
    this.state,
    this.todosRepository,
  }) : super(key: key);
  @override
  TodoProviderState createState() => TodoProviderState();

  static TodoProviderState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_StateInheritedContainer>()
        .data;
  }
}

class TodoProviderState extends State<TodoProvider> {
  AppState state;

  @override
  void initState() {
    if (widget.state != null) {
      state = widget.state;
    } else {
      state = AppState.isLoading();
    }

    //load data
    widget.todosRepository.fetchTodos().then((loadedTodos) {
      setState(() {
        state = AppState(todos: loadedTodos.map(TodoModel.fromEntity).toList());
      });
    }).catchError((err) {
      setState(() {
        state.isLoading = false;
      });
    });

    super.initState();
  }

  //update
  void toggleAll() {
    setState(() {
      state.toggleAll();
    });
  }

  void clearCompleted() {
    setState(() {
      state.removeCompleted();
    });
  }

  void addToDo(TodoModel todoModel) {
    setState(() {
      state.todos.add(todoModel);
    });
  }

  void removeTodo(TodoModel todoModel) {
    setState(() {
      state.todos.remove(todoModel);
    });
  }
  //filter

  void updateFilter(VisibilityFilter filter) {
    setState(() {
      state.activeFilter = filter;
    });
  }

  void updateToDo(
    TodoModel todo, {
    bool complete,
    String id,
    String note,
    String task,
  }) {
    setState(() {
      todo.complete = complete ?? todo.complete;
      todo.id = id ?? todo.id;
      todo.note = note ?? todo.note;
      todo.task = task ?? todo.task;
    });
  }

  //create and Save
  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);
  //   print("Save Method Called");
  //   widget.todosRepository
  //       .saveTodos(state.todos.map((e) => e.toEntity()).toList());
  // }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    widget.todosRepository
        .saveTodos(state.todos.map((todo) => todo.toEntity()).toList());
  }

  @override
  Widget build(BuildContext context) {
    return _StateInheritedContainer(
      child: widget.child,
      data: this,
    );
  }
}

class _StateInheritedContainer extends InheritedWidget {
  final TodoProviderState data;

  _StateInheritedContainer({
    @required this.data,
    @required Widget child,
    Key key,
  }) : super(
          key: key,
          child: child,
        );
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
