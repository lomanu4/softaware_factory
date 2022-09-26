import 'dart:convert';

List<UsersTable> welcomeFromJson(String str) =>
    List<UsersTable>.from(json.decode(str).map((x) => UsersTable.fromJson(x)));

String welcomeToJson(List<UsersTable> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UsersTable {
  UsersTable({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  int id;
  String name;
  String username;
  String email;

  String phone;
  String website;

  factory UsersTable.fromJson(Map<String, dynamic> json) => UsersTable(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "phone": phone,
        "website": website,
      };
}
