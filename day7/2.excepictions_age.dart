void main(List<String> args) {
  check_age(age: 0);
}

void check_age({int age = 1}) {
  if (age <= 0) {
    throw ("The age most be positve !");
  } else {
    print("your age is : ${age}");
  }
}
