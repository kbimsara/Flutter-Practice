int findMax(List<int> numbers) {
  int max = numbers[0];
  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }
  return max;
}

void main() {
  List<int> nums = [3, 5, 7, 2, 8];
  print("The maximum value is ${findMax(nums)}");
}
