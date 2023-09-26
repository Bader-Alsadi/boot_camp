import 'dart:io';

import 'CoffeeVesselFactory.dart';

enum personStatus { rested, sleepy, barelyAlive }

void main(List<String> args) {
  CoffeeVesselFactory cvf = CoffeeVesselFactory();
  var chice;
  stdout.write("""
1.rested
2.sleepy
3.barelyAlive
4.Eixt
What is your status ? 
""");
chice = int.parse(stdin.readLineSync()!);

  switch(chice){
    case 1:
    cvf.typeofvessel(mood: personStatus.rested.name);
    print(cvf.toString());
    break;
     case 2:
    cvf.typeofvessel(mood: personStatus.sleepy.name);
    print(cvf.toString());
    break;
     case 3:
    cvf.typeofvessel(mood: personStatus.barelyAlive.name);
    print(cvf.toString());
    break;
    default:
    print("wrong choic");
  }
  


  
}