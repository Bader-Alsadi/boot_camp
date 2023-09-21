import 'dart:math';
import 'dart:io';

import 'dataOprectionINT.dart';
import 'hotel.dart';
import 'passenger.dart';

class Ticket implements DataOprection {
  late String tickitNO, seatNO, classType;
  late Passenger passenger;

  Ticket(
      {required this.seatNO,
      required this.classType,
      required this.passenger}) {
    this.tickitNO = (Random().nextInt(899999) + 100000).toString();
  }

  @override
  void disPlayInfo() {
    print("""
tickit info : 
tickitNO : ${this.tickitNO}  seatNO : ${this.seatNO} classType : ${this.classType} hotile  
""");
  }

  void bookHotel(List<Hotel> hotels) {
    hotels.forEach((element) {
      print(
          "${hotels.indexOf(element)}-  id : ${element.id} name : ${element.name}");
    });

    stdout.write("Enter index > ");
    this.passenger.hotel = hotels[int.parse(stdin.readLineSync()!)];
  }
}
