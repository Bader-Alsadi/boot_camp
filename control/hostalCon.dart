import '../models/Student.dart';
import 'StudentCon.dart';

class HostalCon {
  checkin(){
    print("Checkin");
  }

  checkout(){
    print("Checkout");
  }
ShowDetails({required int id}){
  List<Student> students=StudentControler.studenList;
     int index =students.indexWhere((element) => element.id == id);
    if (index != -1){
print("""
Tyoe:${students[index].hostel!.type}
room:${students[index].hostel!.room}
block:${students[index].hostel!.block}
state piad:${students[index].hostel!.paid_status ? "paid" : "unpaid"}
""");
    }
    else
      print("Not found");
}
}