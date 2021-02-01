// communicate with sercies and database
import 'package:taskapp/src/core/presentation/data/todo-model.dart';
import 'package:taskapp/src/core/utils/enum/app-enum.dart';

class AppState {
  // loading for data
  bool isLoading;
  final List<TodoModel> todos;
  VisibilityFilter activeFilter = VisibilityFilter.showAll;

  AppState({
    this.isLoading = false,
    this.todos = const [],
    this.activeFilter = VisibilityFilter.showAll,
  });

  factory AppState.isLoading() => AppState(isLoading: true);

  //fetch all completed todos
  bool get allCompleted => todos.every((todo) => todo.complete);

  //fetch filtered todos

  List<TodoModel> get filterTodos => todos.where((todo) {
        switch (activeFilter) {
          case VisibilityFilter.showActive:
            return !todo.complete;
            break;
          case VisibilityFilter.showCompleted:
            return todo.complete;
            break;
          default:
            return true;
        }
      }).toList();

  // get all completed todos
  bool get hasCompletedTodos => todos.any((todo) => todo.complete);

  int get numActive =>
      todos.fold(0, (sum, todo) => !todo.complete ? ++sum : sum);
  int get numComplete =>
      todos.fold(0, (sum, todo) => todo.complete ? ++sum : sum);

  void removeCompleted() {
    todos.removeWhere((todo) => todo.complete);
  }

  void toggleAll() {
    final allCurrentCompleted = allCompleted;

    todos.forEach((todo) => todo.complete = !allCurrentCompleted);
  }

  @override
  int get hashCode => isLoading.hashCode ^ todos.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          isLoading == other.isLoading &&
          todos == other.todos;

  @override
  String toString() {
    return " AppState()";
  }
}
