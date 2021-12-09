import 'package:phone_book/resources/json_reader.dart';

class User {
  User({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.id,
  });

  final DateTime createdAt;
  final String name;
  final String avatar;
  final int id;

  factory User.fromMap(Map<String, dynamic> map) {
    JsonReader reader = JsonReader(map);
    return User(
        createdAt: reader['createdAt'].asDateTime(),
        name: reader['name'].asString(),
        avatar: reader['avatar'].asString(),
        id: reader['id'].asInt());
  }
}
