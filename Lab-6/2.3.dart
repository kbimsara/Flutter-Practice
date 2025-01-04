int sumOfPositiveNumbers(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    if (num > 0) {
      sum += num;
    }
  }
  return sum;
}

void main() {
  List<int> nums = [-5, 10, -3, 7, 20];
  print("The sum of positive numbers is ${sumOfPositiveNumbers(nums)}");
}
