import 'dart:io';

void main(List<String> args) {
  for (int i = 1; i <= 5; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write("* ");
    }
    print("\n");
  }
}
