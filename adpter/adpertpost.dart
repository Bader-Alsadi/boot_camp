import 'ApiPost.dart';
import 'conertPost.dart';
import 'post.dart';

class adpterPost implements ConvertPost {
  List<Post> finalList = [];
  @override
  List<Post> converPost(ApiPost apiPost) {
    Map<String, String> mapAdd = {};
    List<Map> listbefor = apiPost.getPostApi();
    listbefor.forEach((element) {
      element.forEach((key, value) {
      finalList.add(Post(title: key, content:value));
      });
    });
    return finalList;
  }
}
