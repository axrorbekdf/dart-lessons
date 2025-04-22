import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
    
    File file = File("data.txt");
    String result = file.readAsStringSync();

    List resultData = jsonDecode(result);
    
    // print(resultData);

    List<User> userData = [];

    resultData.forEach((element){
        print(element);
        userData.add(User(element['postId'], element['id'], element['name'], element['email'], element['body']));
    });

    // print(userData);

    String resultStr = "";

    userData.forEach((element){
        resultStr += "ID: ${element.id}, Email: ${element.email}\n";
    });

    File("result.txt").writeAsStringSync(resultStr);
    print(resultStr);
}


class User{
    int postId;
    int id;
    String name;
    String email;
    String body;

    User(this.postId, this.id, this.name, this.email, this.body);

    @override
  String toString() {
    return "User($postId, $id, $name, $email, $body)\n";
  }
}