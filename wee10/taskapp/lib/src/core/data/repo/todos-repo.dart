import 'package:taskapp/src/core/data/entity/todo-entity.dart';

abstract class TodosRepository {
  Future<List<TodoEntity>> fetchTodos();
  Future saveTodo(List<TodoEntity> todos);
}
