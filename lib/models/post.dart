class PostModelClass {
  int? userId;
  int? id;
  String? title;
  String? body;
  PostModelClass({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'id': id, 'title': title, 'body': body};
  }

  factory PostModelClass.fromJson(Map<String, dynamic> data) {
    final userId = data['userId'];
    final id = data['id'];
    final title = data['title'];
    final body = data['body'];
    return PostModelClass(id: id, userId: userId, title: title, body: body);
  }
}
