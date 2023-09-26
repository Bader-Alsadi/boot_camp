import 'post.dart';

class MySocialMedia{


  void disPlayPost (List<Post> list){
    list.forEach((element) {
      print(element.toString());
    });

  }
}