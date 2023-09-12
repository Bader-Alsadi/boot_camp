enum day_of_week {
  sunday,
  monday,
  Tuesday,
  Wednesday,
  Thursday,
  friday,
  Saturday
}

void main() {
  day_of_week.values.forEach((element) {
    print(element.name);
  });
}
