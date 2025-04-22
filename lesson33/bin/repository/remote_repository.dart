import 'dart:convert';
import '../model/post_model.dart';
import 'package:http/http.dart' as http;

class RemoteRepository {
  Future<List<PostModel>?> getPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List body = jsonDecode(response.body);
        List<PostModel> result = body.map((element) {
          return PostModel(
            element["postId"],
            element["id"],
            element["name"],
            element["body"],
          );
        }).toList();

        return result;
      } else {
        print('Xatolik: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Xatolik yuz berdi: $e');
      return null;
    }
  }
}
