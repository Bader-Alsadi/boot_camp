import 'ticket.dart';
import 'transportMathod.dart';

class Trip {
  late String idNO, from, to, date;
  late int cost, avalibaleSeats;

  Trip(
      {required this.idNO,
      required this.from,
      required this.to,
      required this.date,
      required this.cost,
      required this.avalibaleSeats});
  late TransportMthod mathod;
  List<Ticket> listTicket = [];
}
