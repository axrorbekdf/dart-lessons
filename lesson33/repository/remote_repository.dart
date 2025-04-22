import 'dart:convert';
import 'dart:io';

import '../model/post_model.dart';

class RemoteRepository {

  File filePost = File("local_db/result.txt");
  List<PostModel>? getPosts() {
    if (filePost.existsSync()) {
      String data = filePost.readAsStringSync();
      List body = jsonDecode(data);
      List<PostModel> result = [];
      for (var element in body) {
        result.add(
          PostModel(
            element["postId"],
            element["id"],
            element["name"],
            element["body"],
          ),
        );
      }
      return result;
    } else {
      return null;
    }
  }
}
