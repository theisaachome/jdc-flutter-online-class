class TodoEntity {
  String id;
  String title;
  String note;
  bool complete;

  TodoEntity({
    this.id,
    this.title,
    this.note,
    this.complete,
  });
  static TodoEntity fromJson(Map<String, dynamic> json) {
    return TodoEntity(
      id: json['id'],
      title: json['title'],
      note: json['note'],
      complete: json['complete'],
    );
  }
}
