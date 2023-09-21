import 'transportMathod.dart';

class Bus extends TransportMthod {
  Bus():super();
  Bus.fial({required String company , required int model , required int seats,required bool avalibale}) : super.fail(company: company,model: model,seats: seats,avalibale: avalibale);
  
  @override
  void disPlayInfo() {
    // TODO: implement disPlayInfo
  }
}