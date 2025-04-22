class PostModel {
  int userId;
  int id;
  String title;
  String body;

  PostModel(this.userId, this.id, this.title, this.body);

  @override
  String toString() {
    return "User($userId, $id, $title, $body)\n";
  }

  Map<String, dynamic> toJson() {
    return {
      "userId": this.userId,
      "id": this.id,
      "title": this.title,
      "body": this.body,
    };
  }
}
