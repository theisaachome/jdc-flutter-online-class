// api fetchs and save

// real backend

import 'package:taskapp/src/core/data/entity/todo-entity.dart';
import 'package:taskapp/src/core/data/repo/todos-repo.dart';

class TodosAPI implements TodosRepository {
  final Duration delay;

  const TodosAPI([this.delay = const Duration(milliseconds: 3000)]);

  // http.get()
  @override
  Future<List<TodoEntity>> fetchTodos() async {
    return Future.delayed(
        delay,
        () => [
              TodoEntity(
                  id: "3",
                  complete: true,
                  note:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  task: "Studio Appointment"),
              TodoEntity(
                  id: "4",
                  complete: false,
                  note:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  task: "Flutter Online Class "),
              TodoEntity(
                  id: "1",
                  complete: false,
                  note:
                      "You placed gold on my finger You brought love like I've never knownYou gave life to our children And to me a reason to go on",
                  task: "Doctor Appointment"),
              TodoEntity(
                  id: "2",
                  complete: false,
                  note:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.",
                  task: "Studio Appointment"),
            ]);
  }

  //http.put
  @override
  Future saveTodos(List<TodoEntity> todos) async {
    return Future.value(true);
  }
}
