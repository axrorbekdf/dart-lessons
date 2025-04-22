import 'dart:convert';

import '../repository/local_repository.dart';
import '../repository/remote_repository.dart';
import '../model/post_model.dart';

class PostProvider {
  final RemoteRepository remoteRepository;
  final LocalRepository localRepository;

  PostProvider(this.remoteRepository, this.localRepository);

  Future<List<PostModel>?> getPost() async {
    List<PostModel>? result;
    result = await remoteRepository.getPosts();
    if (result != null) {
      String json =
          jsonEncode(result.map((i) => i.toJson()).toList()).toString();
      localRepository.setPost(json);
    } else {
      result = localRepository.getPosts();
    }

    return result;
  }
}
