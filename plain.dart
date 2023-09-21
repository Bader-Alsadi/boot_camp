import 'transportMathod.dart';

class plain extends TransportMthod {
    plain():super();
  plain.file({required String company , required int model , required int seats, bool avalibale=false}) : super.fail(company: company,model: model,seats: seats,avalibale: avalibale);
  
  @override
  void disPlayInfo() {
    // TODO: implement disPlayInfo
  }
}