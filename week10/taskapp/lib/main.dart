import 'package:flutter/material.dart';
import 'package:key_value_store_flutter/key_value_store_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskapp/src/core/data/services/todos-local-repo.dart';
import 'package:taskapp/src/core/data/services/todos-local-storage.dart';
import 'package:taskapp/src/core/presentation/provider/todo-provider.dart';
import 'package:taskapp/src/features/general/todo-app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(TodoProvider(
    todosRepository: TodosLocalRepo(
      localStorage: LocalStorage(
        "dummy_todos",
        FlutterKeyValueStore(await SharedPreferences.getInstance()),
      ),
    ),
    child: TodoApp(),
  ));
}
