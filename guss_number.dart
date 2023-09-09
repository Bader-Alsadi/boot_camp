import 'dart:io';
import 'dart:math';

main() {
  var random = Random();
  List numbers = [0];
  for (int i = 1; i <= 100; i++) {
    numbers.add(i);
  }
  var input;
  var guss_number;
  var random_rang = 101;
  var min_limit = 0;
  // List result ;
  do {
    guss_number = random.nextInt(random_rang) + min_limit;
    print("Guss NUMBER is ${guss_number} \n\n");
    print("you number is \n1.too high\n2.too low\n3.=");
    input = stdin.readLineSync();

    if (input == '1') {
      print(numbers.indexOf(guss_number));
      numbers = numbers.sublist(0, numbers.indexOf(guss_number));
      random_rang = guss_number;
    } else if (input == '2') {
      print(numbers.indexOf(guss_number));
      numbers = numbers.sublist(numbers.indexOf(guss_number));
      min_limit = guss_number;
      random_rang = random_rang - min_limit;
    } else if (input == '=') {
      print("your number is ${guss_number}");
      break;
    }

    if (numbers.length == 1) {
      print("your number is ${numbers[0]}");
      min_limit = guss_number;
      break;
    }
  } while (input != "=");
}
