import 'package:homi_front_end/models/images.dart';

class Room {
  final int imageId;
  final List<ImageModel> images;
  final int noOfBedrooms;
  final String sizeInSqMeters;
  final String rent;
  final bool occupied;
  final int apartment;
  final int tenant;

  Room({
    required this.imageId,
    required this.images,
    required this.noOfBedrooms,
    required this.sizeInSqMeters,
    required this.rent,
    required this.occupied,
    required this.apartment,
    required this.tenant,
  });

  factory Room.fromJSon(Map<String, dynamic> json) {
    return Room(
      imageId: json['id'],
      images:
          (json['images'] as List).map((i) => ImageModel.fromJSon(i)).toList(),
      noOfBedrooms: json['number_of_bedrooms'],
      sizeInSqMeters: json['size_in_sq_meters'],
      rent: json['rent'],
      occupied: json['occupied'],
      apartment: json['apartment'],
      tenant: json['tenant'],
    );
  }

  Map<String, dynamic> tojson() {
    return {
      "id": imageId,
      "images": images,
      "number_of_bedrooms": noOfBedrooms,
      "size_in_sq_meters": sizeInSqMeters,
      "rent": rent,
      "occupied": occupied,
      "apartment": apartment,
      "tenant": tenant
    };
  }
}
