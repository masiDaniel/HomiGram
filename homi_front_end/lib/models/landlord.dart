class Landlord {
  final int landlordId;
  final String landlordIdScan;
  final String landlordUserId;

  Landlord({
    required this.landlordId,
    required this.landlordIdScan,
    required this.landlordUserId,
  });
  factory Landlord.fromJSon(Map<String, dynamic> json) {
    return Landlord(
        landlordId: json['id'] ?? 0,
        landlordIdScan: json['landlord_id_scan'] ?? '',
        landlordUserId: json['user'] ?? 0);
  }
  Map<String, dynamic> tojson() {
    return {
      "id": landlordId,
      "landlord_id_scan": landlordIdScan,
      "user": landlordUserId
    };
  }
}
