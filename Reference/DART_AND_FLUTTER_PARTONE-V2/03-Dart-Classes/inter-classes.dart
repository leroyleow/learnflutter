// In Dart, classes are a way to create reusable code by defining a blueprint for creating objects.
// This file will cover intermediate concepts about classes in Dart, such as inheritance, abstract classes, and mixins.

// Inheritance
// Inheritance allows a class to inherit properties and methods from a parent class.

// Parent class
class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print('$name makes a noise.');
  }
}

// Child class
class Dog extends Animal {
  Dog(String name) : super(name);

  // Method overriding
  @override
  void speak() {
    print('$name barks.');
  }
}

// Abstract classes
// Abstract classes are used as a base for other classes and cannot be instantiated on their own.
abstract class Shape {
  double get area;

  void displayArea() {
    print('The area is $area');
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double get area => 3.14 * radius * radius;
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double get area => side * side;
}

// Mixins
// Mixins are a way to reuse a class's code in multiple class hierarchies.

mixin Swim {
  void swim() {
    print('Swimming');
  }
}

class Dolphin extends Animal with Swim {
  Dolphin(String name) : super(name);
}

void main() {
  Dog dog = Dog('Max');
  dog.speak(); // Output: Max barks.

  Circle circle = Circle(5);
  circle.displayArea(); // Output: The area is 78.5

  Square square = Square(4);
  square.displayArea(); // Output: The area is 16

  Dolphin dolphin = Dolphin('Flipper');
  dolphin.swim(); // Output: Swimming
}