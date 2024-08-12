class ImageModel {
  final int id;
  final String image;

  ImageModel({required this.id, required this.image});

  factory ImageModel.fromJSon(Map<String, dynamic> json) {
    return ImageModel(id: json['id'], image: json['image']);
  }
  Map<String, dynamic> tojson() {
    return {
      'id': id,
      'image': image,
    };
  }
}
