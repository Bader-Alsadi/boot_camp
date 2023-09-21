import 'dart:ffi';

import 'bus.dart';
import 'employees.dart';
import 'passenger.dart';
import 'plain.dart';
import 'producFiltter.dart';
import 'ticket.dart';
import 'transportMathod.dart';
import 'trip.dart';
import 'dart:io';

List<Employee> listEmployee = [];
List<Trip> listTrio = [];
// List<Bus> listbus = [];
// List<plain> listBus = [];

void main(List<String> args) {
  Trip t1 = Trip(
      idNO: "111",
      from: "Yemen",
      to: "aden",
      date: "20/12/2020",
      cost: 2000,
      mathod:
          Bus.fial(company: "hunda", model: 2129, seats: 50, avalibale: false),
      avalibaleSeats: 40);
  t1.listTicket.add(Ticket(
      seatNO: "20l",
      classType: "classic",
      passenger: Passenger(
          name: "bader", mobile: "774541450", idNO: "1234", luggageWeiqht: 30)
        ..idType = "paaport"
        ..age = "33"
        ..gender = "mail"));
  t1.listTicket.add(Ticket(
      seatNO: "23l",
      classType: "classic",
      passenger: Passenger(
          name: "ali", mobile: "714541450", idNO: "1235", luggageWeiqht: 24)
        ..idType = "paaport"
        ..age = "33"
        ..gender = "mail"));
  t1.listTicket.add(Ticket(
      seatNO: "23l",
      classType: "classic",
      passenger: Passenger(
          name: "ahmad", mobile: "774541450", idNO: "1236", luggageWeiqht: 50)
        ..idType = "paaport"
        ..age = "33"
        ..gender = "mail"));
  // t1.listTicket[0].disPlayInfo();
  // t1.listTicket[0].passenger.disPlayInfo(); to display ticket
  // listTrio.add(t1);
  // listTrio.forEach((element) {
  //   element.searchForPassngerHavOverThan25k();
  // });
  Ticket t = Ticket(
      seatNO: "200",
      classType: "classic",
      passenger: Passenger(
          name: "ali", mobile: "714541450", idNO: "1235", luggageWeiqht: 24));

  // t.bookHotel(t1.listHotel); too book hotile
}

//Employee
void addEmployee() {
  stdout.write("Id :");
  String id = stdin.readLineSync()!;
  stdout.write("name :");
  String name = stdin.readLineSync()!;
  stdout.write("mobile :");
  String mobile = stdin.readLineSync()!;
  stdout.write("idType :");
  String idType = stdin.readLineSync()!;
  stdout.write("gender :");
  String gender = stdin.readLineSync()!;
  stdout.write("User Name :");
  String userName = stdin.readLineSync()!;
  stdout.write("password :");
  String password = stdin.readLineSync()!;
  stdout.write("emali :");
  String emali = stdin.readLineSync()!;
  stdout.write("jop Title :");
  String jopTitle = stdin.readLineSync()!;

  listEmployee.add(Employee(name: name, mobile: mobile, idNO: id)
    ..idType = idType
    ..gender = gender
    ..userName = userName
    ..password = password
    ..email = emali
    ..jobTitle = jopTitle);
}

void removeEmployeer() {
  stdout.write("name :");
  String name = stdin.readLineSync()!;
  listEmployee.removeWhere(
      (element) => element.name.toLowerCase().contains(name.toLowerCase()));
}
//End

//Trip++
void addTrip() {
  stdout.write("Id :");
  String id = stdin.readLineSync()!;
  stdout.write("from :");
  String from = stdin.readLineSync()!;
  stdout.write("to :");
  String to = stdin.readLineSync()!;
  stdout.write("date :");
  String date = stdin.readLineSync()!;
  stdout.write("cost :");
  int cost = int.parse(stdin.readLineSync()!);
  stdout.write("avalibale Seats :");
  int avalibaleSeats = int.parse(stdin.readLineSync()!);
  print("");
  stdout.write("select transport mathod : \n1.bus\n2.plain\nq.Exit\n\n>>");
  var choice = stdin.readLineSync()!.trim().toString();

  switch (choice) {
    case "1":
      listTrio.add(Trip(
          idNO: id,
          from: from,
          to: to,
          date: date,
          cost: cost,
          mathod: addTransportMthod(Bus()),
          avalibaleSeats: avalibaleSeats));
      break;

    case "2":
      listTrio.add(Trip(
          idNO: id,
          from: from,
          to: to,
          date: date,
          cost: cost,
          mathod: addTransportMthod(plain()),
          avalibaleSeats: avalibaleSeats));
      break;

    default:
      print("wrong choice ");
  }
}

//TransportMthod

TransportMthod addTransportMthod(TransportMthod transportMthod) {
  stdout.write("company :");
  transportMthod.company = stdin.readLineSync()!.trim();
  stdout.write("model :");
  transportMthod.model = int.parse(stdin.readLineSync()!);
  stdout.write("number'seates :");
  transportMthod.seats = int.parse(stdin.readLineSync()!);
  return transportMthod;
}
