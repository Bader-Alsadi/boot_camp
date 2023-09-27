import 'Pizza.dart';

enum size { M, S, L }

void main(List<String> args) {
  Pizza pizza = PizzaBuilder(size: size.S.name)
      .setToppings("diamonds")
      .setToppings("caviar")
      .build();
  print(pizza.toString());
}
