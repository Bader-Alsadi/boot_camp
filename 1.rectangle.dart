void main(List<String> args) {
  Rectangle re = Rectangle(4, 3);
  print(re.Rectangle_area());
  print(re.Rectangle_preimetr());
}

class Rectangle {
  late double length;
  late double width;

  Rectangle(double le, double wi) {
    length = le;
    width = wi;
  }
  String Rectangle_area() =>
      "the Area of Rectangle its lingth $length and its width $width is ${length * width} ";
  String Rectangle_preimetr() =>
      "the preimeter of Rectangle its lingth $length and its width $width is ${(length + width) * 2} ";
}
