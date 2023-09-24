import 'dart:math';

void main(List<String> args) {
  String s = "zodiacs";
  List<String> sx = s.split(RegExp("[aeiou]"));
  // s.sort();

  List<dynamic> dd = s
      .split(RegExp("[aeiou]"))
      .map((e) => e.codeUnits)
      .toList()
      .map((e) => e.map((e) => e - 96).toList())
      .toList();
  // educe((value, element) => (element-96)+ (value-96)) ).toList();
  //  .map((e) => e - 96).toList();
  List<int> di = [];
  di.add((dd[0] as List).reduce((value, element) => value+element));
  // dd.forEach((element) {
  //   di.add((element as List).reduce((value, element) => value + element));
  // });
  print(di);
}
