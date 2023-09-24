import 'dart:convert';
import 'dart:io';

class MyFile {
  MyFile._MyFile() {
    initFile();
  }
  static MyFile? _objectMyfile;
  File? f = File("asset/to_do_list.json");

  static MyFile createObject() {
    if (_objectMyfile == null) _objectMyfile = MyFile._MyFile();
    return _objectMyfile!;
  }

  List readFromFile() {
    return jsonDecode(f!.readAsStringSync());
  }

  void writeFromFile(List items) {
    f!.writeAsStringSync(jsonEncode(items));
  }

  void initFile() async {
    f = await File("asset/to_do_list.json").create(recursive: true);
  }
}
