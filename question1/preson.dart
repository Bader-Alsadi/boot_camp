class Person {
  late String first_name, Last_name;
  int? age;
  String? profession;
  List<String> hobbies = [];

  Person(BuilderPerson builderPerson) {
    this.first_name = builderPerson.first_name;
    this.Last_name = builderPerson.Last_name;
    this.age = builderPerson.age;
    this.profession = builderPerson.profession == null
        ? "Not specified yet"
        : builderPerson.profession;
    this.hobbies = builderPerson.hobbies;
  }

  String toString() {
    return """
name : ${first_name + Last_name}
hobbies:$hobbies
profession : $profession
age:$age
""";
  }
}

class BuilderPerson {
  late String first_name, Last_name;
  int? age;
  String? profession;

  List<String> hobbies = [];
  BuilderPerson({required this.first_name, required this.Last_name});

  BuilderPerson setAge(int? age) {
    this.age = age! <= 0 ? throw "age cannt be less than 0" : age;
    return this;
  }

  BuilderPerson setProfession(String? profession) {
    this.profession = profession == null || profession == ""
        ? throw professionException()
        : profession;
    return this;
  }

  BuilderPerson addHobbi(List<String> hob) {
    hob.forEach((element) {
      if (element != "" && element != null)
        this.hobbies.add(element);
      else
        throw "hobby item can be empty or null";
    });
    return this;
  }

  Person build() {
    return Person(this);
  }
}

class professionException implements Exception {
  // late String messge ;
  professionException();
}
