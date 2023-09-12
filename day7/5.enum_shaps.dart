import 'dart:math';

/**Write a program to implement an enum called "Shapes” with the following elements.
SQUARE, CIRCLE, RECTANGLE, TRIANGLE, HEXAGON. */
enum Shapes { SQUARE, CIRCLE, RECTANGLE, TRIANGLE, HEXAGON }

void main(List<String> args) {
  //Get the elements as list
  List<String> enum_list = Shapes.values.map((e) => e.name.toString()).toList();
  print(enum_list);
  //Access circle element directly
  print("The index of ${Shapes.CIRCLE.name} is : ${Shapes.CIRCLE.index}");
  //Display the first element in enum
  print("the first number is : ${Shapes.values.first}");
  //Display index of triangle
  print("The index of ${Shapes.RECTANGLE.name} is : ${Shapes.RECTANGLE.index}");
  //Get the first element with different way you use in point number 3
  print("the first number is : ${Shapes.values[0]}");
  //Get the elements who have “AN” in their names
  enum_list =
      enum_list.where((element) => element.toString().contains("AN")).toList();
  print(enum_list);
  //Get the first element who has “T in it’s name”
  var first = Shapes.values
      .where((element) => element.toString().contains("T"))
      .toList()
      .first;
  print(first.name);
  /*Get the elements that their length are more than 6 and in startin
  g from index 3 (index 3 included )*/
  List<String> enum_list1 =
      Shapes.values.map((e) => e.name.toString()).toList();
  enum_list1 = enum_list1
      .where((element) => element.length > 6)
      .toList()
      .map((e) => e.substring(3))
      .toList();
  print(enum_list1);
}
