import '../models/department.dart';

class DepartmentCon {
  static List<Department> listDpartment = [];
  AddDparment ({required String name}){
    if(!listDpartment.any((element) => element.name==name))
    listDpartment.add(Department(name: name)..id= listDpartment.isEmpty ? 1 : listDpartment.last.id! + 1);
    else
    print("The deparment is exist");
    
  }
}