import 'adpterProgram.dart';
import 'apiProgram.dart';
import 'file.dart';
import 'program.dart';

void main(List<String> args) {
  FileHelper f = FileHelper.getInstance(fileName:"programs_info.json");
 AdpterProgram adpterProgram = AdpterProgram();
  List<Program> ProgramfromFile=(f.loadfile() as List<Program>);
   List<Program> ProgramfromFapi=adpterProgram.converProgram(ApiProgram());
   [...ProgramfromFile,...ProgramfromFapi].forEach((element) {
    print(element.toString());
   });

}