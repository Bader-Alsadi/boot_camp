main() {
  List<int> number = [2, 10, 4, 1, 3];
  var result = thebigandsmall(number);
  print("the max is : ${result[0]} + the min is ${result[1]}");
}

List thebigandsmall(List nums) {
  var big = nums[0];
  var small = nums[0];
  nums.forEach((element) {
    if (element > big) {
      big = element;
    }
    if (element < small) {
      small = element;
    }
  });
  return [big, small];
}
