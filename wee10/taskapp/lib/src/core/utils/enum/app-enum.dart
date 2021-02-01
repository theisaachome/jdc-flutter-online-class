import 'package:taskapp/src/core/presentation/data/todo-model.dart';

enum AppTab {
  todos,
  stats,
}

enum VisibilityFilter {
  showAll,
  showActive,
  showCompleted,
}

enum ExtraAction {
  markAllCompleted,
  clearCompleted,
}

typedef TodoUpdater = void Function(
  TodoModel todo, {
  bool complete,
  String id,
  String note,
  String task,
});
