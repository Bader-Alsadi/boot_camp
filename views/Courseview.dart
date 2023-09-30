import '../control/CorurseCon.dart';
import '../models/Teacher.dart';

CorurseCon corurseCon = CorurseCon();

void addCoures({required String name,required Teacher teacher,required int noHouers ,required double fees}) {
    // stdout.write("Enter the name");
    // String name =stdin.readLineSync().toString();
    if (corurseCon.addNewCorurse(name: name,teacher:teacher , noHouers: noHouers, fees: fees)) print("added coures seccessfuly");}

void update ({required int id ,required String name,required int noHouers ,required double fees}){
  corurseCon.updateCorurse(id: id, name: name, noHouers: noHouers, fees: fees);
}

void remove ({required int id })
{
  if(corurseCon.deleteCorurse(id: id))
  print("added seccessfuly");
  else print("not founde");
}

void displayonecourse({required int id }){

  print(corurseCon.showOneCorurseInfo(id: id));
}

void displayCourse (){
  CorurseCon.showCorurseInfo().forEach((element) {
    print(element);
  });
}