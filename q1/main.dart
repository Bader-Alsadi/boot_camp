import 'car.dart';

enum CarType { CITY_CAR, SPORTS_CAR }

enum Category { MANUAL, AUTOMATIC }

void main(List<String> args) {
  print(Car(carType: CarType.SPORTS_CAR, seats: 4)
    ..category = Category.MANUAL
    ..gpsNaviqator = true
    ..toString());
  print(Car(carType: CarType.SPORTS_CAR, seats: 4)
    ..category = Category.MANUAL
    ..toString());
}
