import 'dart:html';

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