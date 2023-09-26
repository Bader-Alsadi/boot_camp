import 'Bucket.dart';
import 'Cup.dart';
import 'Vessel.dart';
import 'Volume.dart';

class CoffeeVesselFactory {
  late String mood;
  late Vessel vessel;

  void typeofvessel({required String mood}) {
    this.mood = mood;
    if (mood == "rested" || mood == "barelyAlive")
      vessel = Bucket(volume: Volume(quantity: 2, unit: "liter"));
    else
      vessel = Cup(volume: Volume(quantity: 2, unit: "liter"));
  }

  String toString() {
    return "A ${this.mood} person NEEDS a ${this.vessel.toString()}";
  }
}
