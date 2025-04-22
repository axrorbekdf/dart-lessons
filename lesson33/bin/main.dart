import 'model/post_model.dart';
import 'repository/local_repository.dart';
import 'repository/remote_repository.dart';

void main(List<String> args) async {

    RemoteRepository response = RemoteRepository();
    List<PostModel>? posts = await response.getPosts();
    print(posts);

    // LocalRepository localRepository = LocalRepository();
    // List<PostModel>? response = localRepository.getPosts();
    // print(response);

}