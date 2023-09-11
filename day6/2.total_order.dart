import "dart:io";

void main(List<String> args) {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  var i;
  double total = 0;
  do {
    pizzaPrices.forEach((key, value) {
      print("-- ${key}--${value} ");
    });
    stdout.write("enter you order :");
    String order = stdin.readLineSync().toString();
    total += pizzaPrices[order] ?? 0;
    stdout.write("enter f to finsh ordering");
    i = stdin.readLineSync().toString();
  } while (i != "f");

  print("total is : ${total}");
}
