import 'dart:convert';
import 'dart:io';
import '../model/post_model.dart';

class LocalRepository {
  File filePost = File("bin/local_db/result.txt");

  List<PostModel>? getPosts() {
    if (filePost.existsSync()) {
      String data = filePost.readAsStringSync();
      List body = jsonDecode(data);
      List<PostModel> result = [];
      for (var element in body) {
        result.add(
          PostModel(
            element["userId"],
            element["id"],
            element["title"],
            element["body"],
          ),
        );
      }
      return result;
    } else {
      return null;
    }
  }

  void setPost(String data) {
    filePost.writeAsStringSync(data);
  }
}
