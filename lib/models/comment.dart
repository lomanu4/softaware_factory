class CommentModel {
  int? userId;
  int? id;
  String? name;
  String? email;
  String? body;
  CommentModel({
    this.userId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'name': name,
      'email': email,
      'body': body
    };
  }

  factory CommentModel.fromJson(Map<String, dynamic> data) {
    final userId = data['userId'];
    final id = data['id'];
    final name = data['name'];
    final email = data['email'];
    final body = data['body'];
    return CommentModel(
        userId: userId, id: id, name: name, email: email, body: body);
  }
}
