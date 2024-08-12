import 'dart:convert';
import 'package:homi_front_end/models/user.dart';
import 'package:http/http.dart' as http;

const Map<String, String> headers = {
  "Content-Type": "application/json",
};

// /this is used in the home_page class and the house list page

Future<List<MyUser>> fetchUsers() async {
  try {
    final headersWithToken = {
      ...headers,
      // 'Authorization': 'Token $authToken',
    };

    final response = await http.get(Uri.parse('http://127.0.0.1:8000/users'),
        headers: headersWithToken);

    if (response.statusCode == 200) {
      final List<dynamic> userData = json.decode(response.body);

      final List<MyUser> users =
          userData.map((json) => MyUser.fromJSon(json)).toList();

      return users;
    } else {
      throw Exception('failed to fetch arguments');
    }
  } catch (e) {
    rethrow;
  }
}
