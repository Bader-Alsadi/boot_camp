import 'ApiPost.dart';
import 'adpertpost.dart';
import 'mysocialmedia.dart';

void main(List<String> args) {
  ApiPost apiPost = ApiPost();
  MySocialMedia mySocialMedia = MySocialMedia();
  mySocialMedia.disPlayPost(adpterPost().converPost(apiPost));
}
