import 'dart:math';

void main(List<String> args) {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
  var sum;
  restaurants.forEach((element) {
    sum = 0;
    (element["ratings"] as List).forEach((e) {
      // print(e);
      sum += e;
    });
    element["avgRating"] = sum / (element["ratings"] as List).length;
  });

  restaurants.forEach((element) {
    print(element);
  });
}
