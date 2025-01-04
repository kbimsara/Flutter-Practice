// Import the test package
import 'package:test/test.dart';

// Function to test (from Exercise 2): Check if a number is even
bool isEven(int number) => number % 2 == 0;

// Function to test (from Exercise 3): Calculate factorial
int factorial(int n) => (n <= 1) ? 1 : n * factorial(n - 1);

// Function to test (from Exercise 3): Find the maximum in a list
int findMax(List<int> numbers) => numbers.reduce((a, b) => a > b ? a : b);

void main() {
  group('isEven Tests', () {
    test('should return true for even numbers', () {
      expect(isEven(4), isTrue);
      expect(isEven(0), isTrue);
    });

    test('should return false for odd numbers', () {
      expect(isEven(3), isFalse);
      expect(isEven(-1), isFalse);
    });
  });

  group('factorial Tests', () {
    test('should calculate factorial correctly', () {
      expect(factorial(0), equals(1));
      expect(factorial(5), equals(120));
    });

    test('should throw error for negative numbers', () {
      expect(() => factorial(-1), throwsA(isA<RangeError>()));
    });
  });

  group('findMax Tests', () {
    test('should return the maximum value in the list', () {
      expect(findMax([1, 2, 3, 4, 5]), equals(5));
      expect(findMax([-10, -20, -3, -1]), equals(-1));
    });

    test('should throw error for empty list', () {
      expect(() => findMax([]), throwsA(isA<StateError>()));
    });
  });
}
