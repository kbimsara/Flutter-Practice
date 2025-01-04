List<int> removeDuplicates(List<int> numbers) {
  return numbers.toSet().toList();
}

void main() {
  List<int> nums = [1, 2, 3, 2, 4, 1, 5];
  print("List without duplicates: ${removeDuplicates(nums)}");
}
