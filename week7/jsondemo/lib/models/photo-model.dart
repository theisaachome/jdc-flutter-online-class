class PhotoList {
  List<PhotoModel> photos;
  PhotoList({this.photos});
  factory PhotoList.fromJson(List<dynamic> photoList) {
    final tempPhotos = photoList.map((e) => PhotoModel.fromJson(e)).toList();
    return PhotoList(photos: tempPhotos);
  }
}

class PhotoModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;
  PhotoModel({
    this.albumId,
    this.id,
    this.title,
    this.thumbnailUrl,
    this.url,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
