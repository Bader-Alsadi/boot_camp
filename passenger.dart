import 'endUser.dart';

class Passenger extends EndUser{
  int countluggqge=1;
  Passenger({required String name,
  required String mobile,
  required String idNO})
  :super(name: name,mobile: mobile,idNO: idNO);
  
  @override
  void disPlayInfo() {
    // TODO: implement disPlayInfo
  }
}