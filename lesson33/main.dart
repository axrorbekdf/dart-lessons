import 'model/post_model.dart';
import 'repository/local_repository.dart';

void main(List<String> args) {
  
    LocalRepository localRepository = LocalRepository();
    List<PostModel>? response = localRepository.getPosts();
    print(response);

}