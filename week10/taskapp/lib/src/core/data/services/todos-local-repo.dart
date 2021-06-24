import 'package:flutter/material.dart';
import 'package:taskapp/src/core/data/entity/todo-entity.dart';
import 'package:taskapp/src/core/data/repo/todos-repo.dart';
import 'package:taskapp/src/core/data/services/todos-api.dart';

class TodosLocalRepo implements TodosRepository {
  final TodosRepository todosApi;
  final TodosRepository localStorage;

  TodosLocalRepo({
    @required this.localStorage,
    this.todosApi = const TodosAPI(),
  });

  @override
  Future<List<TodoEntity>> fetchTodos() async {
    try {
      // localFetch
      return await localStorage.fetchTodos();
    } catch (e) {
      // fetch from api
      final todos = await todosApi.fetchTodos();
      localStorage.saveTodos(todos);

      return todos;
    }
  }

  @override
  Future saveTodos(List<TodoEntity> todos) {
    print(todos);
    return Future.wait<dynamic>([
      localStorage.saveTodos(todos),
      todosApi.saveTodos(todos),
    ]);
  }
}
