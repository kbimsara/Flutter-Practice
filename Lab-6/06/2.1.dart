import 'dart:io';

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (isEven(number)) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}
