class MyUser {
  final int userId;
  final String firstName;
  final String lastName;
  final String email;
  final String typeOfUser;
  final String phone;

  MyUser({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.typeOfUser,
    required this.phone,
  });

  factory MyUser.fromJSon(Map<String, dynamic> json) {
    return MyUser(
      userId: json['id'] ?? 0,
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      email: json['email'] ?? '',
      typeOfUser: json['typeOfUser'] ?? '',
      phone: json['phone'] ?? '',
    );
  }

  Map<String, dynamic> tojson() {
    return {
      "id": userId,
      "first_name": firstName,
      "lastName": lastName,
      "email": email,
      "typeOfUser": typeOfUser,
      "phone": phone
    };
  }
}
