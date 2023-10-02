import 'preson.dart';

void main(List<String> args) {
  try {
    Person person = BuilderPerson(first_name: "bader", Last_name: "alsadi")
        .setAge(25)
        .setProfession("")
        .addHobbi(["shooting"]).build();
    print(person.toString());
  } on professionException {
    print("Profession cannot be null");
  } catch (e) {
    print(e);
  }
}
