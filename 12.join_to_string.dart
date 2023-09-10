void main(List<String> args) {
  List<String> str1 = ["bader", "saleh", "bader", "alsadi"];

  print(join_string(str1));
}

String join_string(List<String> str) {
  return str.join(" ");
}
