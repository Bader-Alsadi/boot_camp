import 'dart:convert';
import 'dart:io';
import 'dart:math';

int balance = 100;
int max_book = 3;
List cart = List.empty(growable: true);
void main(List<String> args) async {
  File f = await File("asset/bookData.json").create(recursive: true);
  String books_str = f.readAsStringSync();
  List books_josn = jsonDecode(books_str);
  print(books_josn[0]);
  var input;
  do {
    print("""********Welcome to BookStore Application**************
1. View Books
2. Add Book
3. Remove Book
4. Search Books
5. Add To Shopping Cart
6. Manage Shopping Cart
7. Confirm Payment
8. Check Your Balance
9. Get Details of One book
q. Exit
*********************************************""");
    stdout.write("Enter your choice :");
    input = stdin.readLineSync() ?? "q";
    switch (input) {
      case "1":
        print_listbooks(books_josn);
        break;
      case "2":
        add_to_list(
          books_josn,
        );
        break;
      case "3":
        stdout.write("Enter Book Number / ID : ");
        int id = int.parse(stdin.readLineSync() ?? "");
        books_josn.removeWhere((element) => element["id"] == id);
        print("Successfully Added, Books Now : ${books_josn.length}");
        break;

      case "4":
        filter_name_year(books_josn);
        break;

      case "5":
        add_to_card(books_josn);
        break;
    }
  } while (input != "q");
}

void print_listbooks(List josn_list) {
  josn_list.forEach((element) {
    print(
        "[ ${element["name"]} ] (${element["id"]} ) -- Author : ${element["author"]}  , Quantity : ${element["quantity"]} , Price : ${element["price"]} , Category : ${element["category"]} , status : ${element["quantity"] > 0 ? "Available" : "Sold Out"} ");
  });

  print("=" * 100);
}

void add_to_list(List list_to_add) {
  Random r = Random();
  Map to_add = Map();
  print("to add to the list : ");
  var input;
  do {
    to_add["id"] = r.nextInt(1000);

    stdout.write("Enter Book Name :");
    String Str = stdin.readLineSync().toString();
    to_add["name"] = Str; //name

    stdout.write("Enter the Author :");
    Str = stdin.readLineSync().toString();
    to_add["author"] = Str; //

    stdout.write("Enter the Quantity :");
    int num = int.parse(stdin.readLineSync()!);
    to_add["quantity"] = num;

    stdout.write("Enter the Price :");
    double pri = double.parse(stdin.readLineSync()!);
    to_add["price"] = pri;

    stdout.write("Enter the Category :");
    List cat = stdin.readLineSync().toString().split(",");
    to_add["category"] = cat;

    int count = 0;
    list_to_add.forEach((element) {
      if (element["name"].toString() == to_add["name"].toString()) count = 1;
    });
    if (count == 0) {
      list_to_add.add(to_add);
      print("Successfully Added, Books Now : ${list_to_add.length}");
      break;
    } else {
      stdout.write(
          "book name exist before, Try Again if you want to exit enter q or any key to ..");
      input = stdin.readLineSync().toString();
      to_add.clear();
    }
  } while (input != "g");
}

void filter_name_year(List list_to_filtter) {
  stdout.write("Enter Your Search Word (Name / Category) :");
  String input = stdin.readLineSync().toString();
  List cat = input.split(" ");
  list_to_filtter.forEach((element) {
    if (element["name"].toString().contains(input)) {
      print(
          "[ ${element["name"]} ] (${element["id"]} ) -- Author : ${element["author"]}  , Quantity : ${element["quantity"]} , Price : ${element["price"]} , Category : ${element["category"]} , status : ${element["quantity"] > 0 ? "Available" : "Sold Out"} ");
    }
  });
}

void add_to_card(List list_to_cart) {
  String? input;
  int? id;
  for (int i = 0; i < max_book; i++) {
    stdout.write("""Add Book to the cart by it's id
Enter Book id to add it to the cart :""");
    id = int.tryParse(stdin.readLineSync() ?? "");
    int index = list_to_cart.indexWhere((element) => element["id"] == id);
    if (list_to_cart[index]["id"] == id) {
      cart.add(list_to_cart[index]["name"]);
      print(
          "Until Now You have ${cart.length} book the total is :${balance - list_to_cart[index]["price"]} ");
    } else {
      print("book doesn't exist");
    }
    stdout.write("Do you want to add another item (Y/N) ?");
    input = stdin.readLineSync().toString();
    if (input == "y") break;
  }
}
