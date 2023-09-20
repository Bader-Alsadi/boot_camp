import 'dataOprectionINT.dart';

abstract class TransportMthod implements DataOprection {
  String company;
  int model;
  int seats;

  TransportMthod(
      {required this.company, required this.model, required this.seats});


}
