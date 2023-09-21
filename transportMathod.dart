import 'dataOprectionINT.dart';

abstract class TransportMthod implements DataOprection {
  late String company;
  late int model;
  late int seats;
  late bool avalibale;
  TransportMthod(){
    this.company="";
    this.model=0;
    this.seats=0;
    this.avalibale=true;

  }
  TransportMthod.fail(
      {required this.company, required this.model, required this.seats,required this.avalibale});


}
