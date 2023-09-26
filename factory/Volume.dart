
import 'Vessel.dart';

class Volume {
  late int quantity;
  late String unit;
  Volume({required this.quantity, required this.unit});

  String toString() {
    return"${this.quantity} ${this.unit}";
  }
}