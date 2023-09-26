class Post {
  late String title,content;

  Post({required this.title,required this.content});

  String toString(){
    return"$title $content";
  }

}