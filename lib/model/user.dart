import 'dart:convert';

List<User> userModelFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userModelToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    
class User {
  final String id;
  final String name;
  final String email;
  final String company;

  const User (
    {
      required this.id,
      required this.name,
      required this.email,
      required this.company
    }
  );

  static User fromJson (Map<String,dynamic> user ) {
    

    return User (
      id: user['id'],
      name: user['name'],
      email: user['email'],
      company: user['company'],

    );
  }
  Map<String, dynamic> toJson() => {
    'id' : id,
    'name': name,
    'email': email,
    'company': company,
  };
}