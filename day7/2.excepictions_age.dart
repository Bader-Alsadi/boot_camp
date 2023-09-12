/*Write function that accept the user age as a required named parameter. if the passed
age under 0 just throw an exception and display message that says : “Age Can’t be
Negative”*/
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
