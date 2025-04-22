import 'model/post_model.dart';
import 'repository/local_repository.dart';
import 'repository/remote_repository.dart';

void main(List<String> args) async {

    RemoteRepository remoteRepository = RemoteRepository();
    List<PostModel>? posts_remote = await remoteRepository.getPosts();
    print(posts_remote);

    LocalRepository localRepository = LocalRepository();
    List<PostModel>? posts_local = localRepository.getPosts();
    print(posts_local);

}