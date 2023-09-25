
/**
 *   Single Responsibility Principle
 * I isolate the Invoice and Email to different classes
 * to apply the Single Responsibility Principle
 * */
class Item {
  final int code;
  final double price;
  final double quantity;

  Item(this.code, this.price, this.quantity);

  static List<Item> stockItems = [
    Item(123, 20.0, 5),
    Item(111, 10.5, 1),
    Item(222, 50.0, 10),
  ];
}

class Invoice {
  printInvoice(String invoice) {
    print(invoice);
  }

  void createInvoice(List<Item> cartItems) {
    double total = 0;
    for (var item in cartItems) {
      total += item.price;
    }
  }
}

class Email {
  sendEmail(String customerEmail) {
    //Send Email to Customer
  }
}

class ShoppingCart {
  List<Item> cartItems = [];

  void removeFromCart(Item item) {
    if (cartItems.contains(item)) {
      cartItems.remove(item);
    }
  }

  void addToCart(Item item) {
    var quantityInStock = Item.stockItems
        .where((element) => element.code == item.code)
        .first
        .quantity;
    if (quantityInStock > 0) {
      cartItems.add(item);
    }
  }

  int getCartItemsCount() {
    return cartItems.length;
  }

  
}
