class Car {
  late Enum carType;
  Enum? category;
  late int seats;
  bool? gpsNaviqator;

  Car(
      {required this.carType,
      required this.seats,
      this.category,
      this.gpsNaviqator});

  Enum? get getCategory => this.category;

  set setCategory(Enum? category) => this.category = category;
  get getGpsNaviqator => this.gpsNaviqator;

  set setGpsNaviqator(gpsNaviqator) => this.gpsNaviqator = gpsNaviqator;

  String toString() {
    return ("""
Car Type: ${this.carType}
Car Category: ${this.category}
Seats Count: ${this.seats}
GPS Navigator: ${this.gpsNaviqator == null ? "N/A" : "Functional"}
""");
  }
}
