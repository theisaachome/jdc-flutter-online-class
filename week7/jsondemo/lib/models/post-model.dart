class PostModel {
  int id;
  int userId;
  String title;
  String body;

  PostModel({
    this.id,
    this.userId,
    this.title,
    this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      body: json['body'],
      id: json['id'],
      title: json['title'],
      userId: json['userId'],
    );
  }
}
