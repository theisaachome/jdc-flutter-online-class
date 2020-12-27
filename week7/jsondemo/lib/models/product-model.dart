class ProductModel {
  int id;
  String name;
  List<ImageModel> images;
  ProductModel({this.id, this.name, this.images});
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    var images = json['images'] as List;
    return ProductModel(
      id: json['id'],
      name: json['name'],
      images: images.map((e) => ImageModel.fromJson(e)).toList(),
    );
  }
}

class ImageModel {
  int id;
  String imageName;
  ImageModel({
    this.id,
    this.imageName,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      imageName: json['imageName'],
    );
  }
}
