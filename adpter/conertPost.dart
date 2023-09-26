import 'ApiPost.dart';
import 'post.dart';

abstract class ConvertPost {

  List<Post> converPost(ApiPost apiPost);

}