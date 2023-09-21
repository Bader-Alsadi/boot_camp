

import 'dataOprectionINT.dart';

abstract class EndUser implements DataOprection {
  late String name,mobile,idNO,_idType,_gender,_age;
  EndUser({required this.name ,required this.mobile , required this.idNO});

  set idType (String value)=> this._idType = value;
  String get idType => this._idType;

  set gender (String value)=> this._gender = value;
  String get gender => this._gender;

  set age (String value)=> this._age = value;
  String get age => this._age;


}