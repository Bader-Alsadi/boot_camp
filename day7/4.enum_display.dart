/**Write a program to create an enum called "DaysOfWeek" representing the days of the
week using enum and display it */
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
