import 'covertSwitsh.dart';

class HandelSwitsh {
  late SwichState swichState;


  HandelSwitsh({required  this.swichState});

  setSate({required SwichState swichState}) {
    print("Toggling the light switch...");
    print("Touching the Stateful...");
    print(
        "Handler of ${this.swichState.runtimeType.toString()} is being called!");
    this.swichState = swichState;
  }

  handelstate() {
    swichState.state();
  }
}
