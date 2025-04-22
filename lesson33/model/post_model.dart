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
}