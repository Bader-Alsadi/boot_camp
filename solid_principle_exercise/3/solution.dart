
/**
 *  Liskov Substitution Principle
 * the Dog ,cat and Bird are subclass of Animal
 * but tge Cat and Dod can only walk they can fly 
 * like the Bird ,I sprit the fly() mathod to anther
 *  class named AnimalCanfly and let it inherit Animal
 * and I inherit class AnimalCanfly to the Bird class
 * */
abstract class Animal {
  void makeSound();

  void walk();

  void eat();


}
abstract class AnimalCanfly extends Animal {
  void fly();
}

class Cat extends Animal {
  @override
  void eat() {
    // implement eat
  }

  @override
  void makeSound() {
    // implement makeSound
  }

  @override
  void walk() {
    // implement walk
  }
}

class Dog extends Animal {
  @override
  void eat() {
    // implement eat
  }

  @override
  void makeSound() {
    // implement makeSound
  }

  @override
  void walk() {
    // implement walk
  }
}

class Bird extends AnimalCanfly {
  @override
  void eat() {
    // implement eat
  }

  @override
  void fly() {
    // implement fly
  }

  @override
  void walk() {
    // implement walk
  }

  @override
  void makeSound() {
    // implement makeSound
  }
}

void main() {}