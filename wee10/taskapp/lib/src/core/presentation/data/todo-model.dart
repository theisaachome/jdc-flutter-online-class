import 'package:taskapp/src/core/data/entity/todo-entity.dart';
import 'package:taskapp/src/core/utils/constants/uuid.dart';

class TodoModel {
  String id;
  String task;
  String note;
  bool complete;

  TodoModel(
    this.task, {
    this.note = "",
    this.complete = false,
    String id,
  }) : id = id ?? Uuid().generateV4();

// fromEntity to Model
  static TodoModel fromEntity(TodoEntity entity) {
    return TodoModel(
      entity.task,
      id: entity.id ?? Uuid().generateV4(),
      complete: entity.complete,
      note: entity.note,
    );
  }

//  model to entity

  TodoEntity toEntity() {
    return TodoEntity(
      id: id,
      complete: complete,
      note: note,
      task: task,
    );
  }

  @override
  int get hashCode =>
      id.hashCode | complete.hashCode ^ task.hashCode ^ note.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          note == other.note &&
          complete == other.complete &&
          task == other.task;

  @override
  String toString() {
    return " TodoEntity()";
  }
}
