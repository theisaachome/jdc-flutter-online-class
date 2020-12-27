class FriendModel {
  int id;
  String name;
  String userName;
  List<String> friends;

  FriendModel({
    this.id,
    this.name,
    this.userName,
    this.friends,
  });

  factory FriendModel.fromJson(Map<String, dynamic> json) {
    // var friends = List<String>.from(json['friends']);
    return FriendModel(
      id: json['id'],
      name: json['name'],
      userName: json["userName"],
      friends: json['friends'].cast<String>(),
    );
  }
}
