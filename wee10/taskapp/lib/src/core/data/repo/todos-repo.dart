import 'package:taskapp/src/core/data/entity/todo-entity.dart';

abstract class TodosRepository {
  Future<List<TodoEntity>> fetchTodos();
  Future saveTodos(List<TodoEntity> todos);
}

// database => shared look for data => API fetch fetch lox save local
