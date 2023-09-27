class Pizza {
  late String size;
  Set<String>? toppings ;

  Pizza(PizzaBuilder pizzaBuilder){
    this.size = pizzaBuilder.size;
    this.toppings = pizzaBuilder.toppings;
  }
  String get getToppings => this.toppings!.join(" ");

  // set setToppings(String toppings) {
  //   this.toppings =
  //       this.toppings.join(" ").replaceAll("and", "").split(" ").toSet();
  //   this.toppings.add("and $toppings");
  // }

// void displaytoppings(){
//   if(toppings.length==1)
//   stdout.write(toppings.first);
//   else if (toppings.length==2)
//   stdout.write("${toppings.first} and ${toppings.last}");
//   else{
//   }
// }
  String toString() {
    return "A delicous ${size} \" pizza covered in ${this.getToppings}";
  }
}

class PizzaBuilder {

   late String size;
  Set<String> toppings = {"cheese "};

   PizzaBuilder({required this.size});
   PizzaBuilder  setToppings(String toppings) {
    this.toppings =
        this.toppings.join(" ").replaceAll("and", "").split(" ").toSet();
    this.toppings.add("and $toppings");
    return this;

  }

  Pizza build (){
    return Pizza(this);
  }
}
