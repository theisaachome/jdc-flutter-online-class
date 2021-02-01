import 'package:flutter/material.dart';
import 'package:taskapp/src/core/utils/routes/app-routes.dart';
import 'package:taskapp/src/core/utils/style/app-style.dart';
import 'package:taskapp/src/features/general/home.dart';
import 'package:taskapp/src/features/screens/todos/todo-edit.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (c) => "Todo App",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routes: {
        AppRoutes.home: (c) => HomeScreen(),
        AppRoutes.addTodo: (c) => AddEditScreen(),
      },
    );
  }
}
