import 'file.dart';
import 'program.dart';

void main(List<String> args) {
  FileHelper f = FileHelper.getInstance(fileName:"programs_info.json");
  (f.loadfile() as List<Program>).forEach((element) {
    print(element.toString());
  });
}