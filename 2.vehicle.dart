void main(List<String> args) {
  Vehicle ve = Vehicle("TOYOTA", "HILUX", 2020);
  ve.disPlayInfo();
}

class Vehicle {
  late String brand;
  late String model;
  late int year;

  Vehicle(String brand, String model, int year) {
    this.brand = brand;
    this.model = model;
    this.year = year;
  }

  void disPlayInfo() {
    print(
        "The Vehicle brand  is $brand and model is $model made in $year year ");
  }
}
