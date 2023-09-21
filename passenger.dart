import 'endUser.dart';
import 'hotel.dart';

class Passenger extends EndUser{
  int countluggqge=1;
  late double luggageWeiqht ; 
   Hotel? hotel;
  Passenger({required String name,
  required String mobile,
  required String idNO,required this.luggageWeiqht})
  :super(name: name,mobile: mobile,idNO: idNO);
  
  @override
  void disPlayInfo() {
     print("""
Passenger info
id : ${this.idNO}  name : ${this.name} gender : ${this.gender} Id type : ${this.idType}

mobile : ${this.mobile}  
""");
  }
}