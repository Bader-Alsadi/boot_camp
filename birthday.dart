class Birtday{
  late String name,birhday;

  Birtday({required this.name, required this.birhday});


int get_mounth ()=>  int.parse(this.birhday.split("/")[1]);
}
