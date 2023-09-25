import 'dart:math';

void main(List<String> args) {
  List l = [1, 1, 1];
  for (; l.length < 10;)
    l.add(l.sublist(l.length - 3).reduce((value, element) => value + element));
  print(l);
}
