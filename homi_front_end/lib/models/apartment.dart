class Apartment {
  final int apartmentId;
  final String apartmentName;
  final String address;
  final int noOfRooms;
  final String amenities;
  final String apartmentImage;
  final int landlordUserId;

  Apartment({
    required this.apartmentId,
    required this.apartmentName,
    required this.address,
    required this.noOfRooms,
    required this.amenities,
    required this.apartmentImage,
    required this.landlordUserId,
  });
  factory Apartment.fromJSon(Map<String, dynamic> json) {
    return Apartment(
        apartmentId: json['id'] ?? 0,
        apartmentName: json['name'] ?? 0,
        address: json['address'] ?? 0,
        noOfRooms: json['no_of_rooms'] ?? 0,
        amenities: json['amenities'] ?? 0,
        apartmentImage: json['apartment_main_image'] ?? '',
        landlordUserId: json['landlord'] ?? 0);
  }
  Map<String, dynamic> tojson() {
    return {
      "id": apartmentId,
      "name": apartmentName,
      "address": address,
      "no_of_rooms": noOfRooms,
      "amenities": amenities,
      "landlord_id_scan": apartmentImage,
      "landlord": landlordUserId
    };
  }
}
