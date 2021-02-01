class TodoEntity {
  String id;
  String task;
  String note;
  bool complete;

  TodoEntity({
    this.id,
    this.task,
    this.note,
    this.complete,
  });
  static TodoEntity fromJson(Map<String, dynamic> json) {
    return TodoEntity(
      id: json['id'],
      task: json['task'],
      note: json['note'],
      complete: json['complete'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "complete": complete,
      "note": note,
      "task": task,
    };
  }

  @override
  int get hashCode =>
      id.hashCode | complete.hashCode ^ task.hashCode ^ note.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoEntity &&
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
