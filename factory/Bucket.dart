import 'Vessel.dart';
import 'Volume.dart';

class Bucket  extends Vessel{

Bucket({required Volume volume}):super(){
this.volume=volume;
}
   String toString() {
    return"${volume.toString()} bucket full of ${this.liquidTypel}";
  }
}