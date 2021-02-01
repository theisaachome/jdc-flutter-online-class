import 'dart:convert';
import 'package:taskapp/src/core/data/entity/todo-entity.dart';
import 'package:taskapp/src/core/data/repo/todos-repo.dart';
import 'package:key_value_store/key_value_store.dart';

class LocalStorage implements TodosRepository {
  // name for our data example todo
  final String key;
  final KeyValueStore store;
  final JsonCodec codec;

  LocalStorage(this.key, this.store, [this.codec = json]);

  @override
  Future<List<TodoEntity>> fetchTodos() {
    return codec
        .decode(store.getString(key))['todos']
        .cast<Map<String, Object>>()
        .map<TodoEntity>(TodoEntity.fromJson)
        .toList(growable: false);
  }

  @override
  Future<bool> saveTodos(List<TodoEntity> todos) {
    return store.setString(
      key,
      codec.encode({
        'todos': todos.map((todo) => todo.toJson()).toList(),
      }),
    );
  }
}
