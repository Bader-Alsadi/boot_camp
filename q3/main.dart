import 'handeSwitsh.dart';
import 'onState.dart';

void main(List<String> args) {
  HandelSwitsh handelSwitsh = HandelSwitsh(swichState: OnState());
  handelSwitsh.handelstate();
  handelSwitsh.setSate(swichState: OnState());
  handelSwitsh.handelstate();
}
