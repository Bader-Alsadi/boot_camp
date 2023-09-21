import 'dataOprectionINT.dart';
import 'hotel.dart';
import 'passenger.dart';
import 'ticket.dart';
import 'transportMathod.dart';

class Trip implements DataOprection {
  late String idNO, from, to, date;
  late int cost, avalibaleSeats;

  Trip(
      {required this.idNO,
      required this.from,
      required this.to,
      required this.date,
      required this.cost,
      required this.mathod,
      required this.avalibaleSeats});
  late TransportMthod mathod;
  List<Ticket> listTicket = [];
  List<Hotel> listHotel = List.generate(
      10, (index) => Hotel(name: "hotel$index", id: "${index + 100}"));

  @override
  void disPlayInfo() {
    print("""
id : ${this.idNO}  name : ${this.from} gender : ${this.to} 

   cost : ${this.cost}   mathod : ${this.mathod.runtimeType}    avalibale Seats: ${this.avalibaleSeats}
""");
  }

  void searchForPassngerHavOverThan25k() {
    listTicket.forEach((e) {
      if (e.passenger.luggageWeiqht > 25) {
        e.disPlayInfo();
        e.passenger.disPlayInfo();
        print("+" * 55);
      }
    });
  }

  void searchForPassngerWith(String mobile) {
    listTicket.forEach((e) {
      if (e.passenger.mobile.startsWith(mobile)) {
        e.disPlayInfo();
        e.passenger.disPlayInfo();
        print("+" * 55);
      }
    });
  }

  int countAvalibaleSeats() {
    return this.avalibaleSeats - this.listTicket.length;
  }
}
