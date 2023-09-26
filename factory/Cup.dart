import 'Vessel.dart';
import 'Volume.dart';

class Cup  extends Vessel{

Cup({required Volume volume}):super(){
this.volume=volume;
}
   String toString() {
    return"${volume.toString()} cup full of ${this.liquidTypel}";
  }
}