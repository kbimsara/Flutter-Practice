// File: test_2_1.dart
import 'package:test/test.dart';
import './2.1.dart'; // Adjust the path if needed

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
}
