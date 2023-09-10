import 'dart:io';
import 'dart:math';

main() {
  stdout.write("Enter the radius :");
  double radius = double.parse(stdin.readLineSync().toString());
  double pa = 3.14;
  var area = pa * pow(radius, 2);

  print("The area of circle it redius is ${radius} is : ${area}");
}
