/**Write a program to create a method that takes an integer as a parameter and throws
an exception (Custom Exception) if the number is odd. */
void main(List<String> args) {
  try {
    check_odd(1);
  } catch (e) {
    print(e);
  }
}

class OddException implements Exception {
  OddException() {
    print('number is odd');
  }
}

void check_odd(int num) {
  if (num.isOdd) throw OddException();
}
