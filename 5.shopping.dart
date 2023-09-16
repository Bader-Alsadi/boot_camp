import 'dart:convert';
import 'dart:io';

void main(List args) async {
  File f = File("books.json");
  List list_book = jsonDecode(f.readAsStringSync());
  Book b1 = Book(list_book[0]);
  Book b2 = Book(list_book[1]);
  ShoppingCart car = ShoppingCart();
  car.addItem(b1);
  car.addItem(b2);
  print("the total is ${car.total_item()}");
}

class ShoppingCart {
  late List<Book> item;
  late double total;

  ShoppingCart() {
    this.item = List.empty(growable: true);
    this.total = 0;
  }
  void addItem(Book book) {
    this.item.add(book);
  }

  double total_item() {
    this.total = 0;
    item.forEach((element) {
      this.total = this.total + element.price;
    });
    return this.total;
  }
}

class Book {
  late int id;
  late String name;
  late String author;
  late double price;
  late List category;
  late int quantity;

  Book(Map m) {
    this.id = m["id"];
    this.name = m["name"];
    this.author = m["author"];
    this.price = m["price"];
    this.category = m["category"];
    this.quantity = m["quantity"];
  }
}
