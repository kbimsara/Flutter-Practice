import 'dart:math';

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * radius;
  }
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(10, 5);

  print("Circle: Area = ${circle.calculateArea()}, Perimeter = ${circle.calculatePerimeter()}");
  print("Rectangle: Area = ${rectangle.calculateArea()}, Perimeter = ${rectangle.calculatePerimeter()}");
}
