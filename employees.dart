import 'endUser.dart';


class Employee extends EndUser {
  late String _email,_userName,_password,_jobTitle;
  Employee({required String name,required String mobile,required String idNO}):super(name: name,mobile: mobile,idNO: idNO);
  
  String get email => this._email;
  set email (String value)=>this._email=value;


  String get userName => this._userName;
  set userName (String value)=>this._userName=value;

  String get password => this._password;
  set password (String value)=>this._password=value;

  String get jobTitle => this._jobTitle;
  set jobTitle (String value)=>this._jobTitle=value;

  @override
  void disPlayInfo() {
    print("""
id : ${this.idNO}  name : ${this.name} gender : ${this.gender} Id type : ${this.idType}

   mobile : ${this.mobile}   email : ${this.email}    jop title : ${this._jobTitle}
""");
  }

}