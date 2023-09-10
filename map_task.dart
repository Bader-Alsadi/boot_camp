void main(List<String> args) {
  List l1 = [2, 5, 10, 30, 60];
  List result = l1.map((e) => e * 2).toList();
  print(result);
}
