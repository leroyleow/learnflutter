// In this Dart file, we will explore the concept of creating a class in Dart programming language,
// focusing on mixins. We will cover the following outline:
// 1. Mixins
//    A. Definition and importance
//    B. Syntax for mixins
//    C. Using mixins with classes

// A mixin is a way to reuse a class's code in multiple class hierarchies.
// It allows you to share methods and variables among different classes without
// the need for inheritance. Mixins are important because they help in reducing
// code duplication and promote code reusability.

// B. Syntax for mixins
// To create a mixin, we use the 'mixin' keyword followed by the mixin name.
// A mixin can also extend other mixins, and it can implement interfaces.

// Let's create a mixin called 'WalkMixin' that contains a method called 'walk'.
mixin WalkMixin {
  void walk() {
    print("I can walk.");
  }
}

// Let's create another mixin called 'SwimMixin' that contains a method called 'swim'.
mixin SwimMixin {
  void swim() {
    print("I can swim.");
  }
}

// C. Using mixins with classes
// To use a mixin in a class, we use the 'with' keyword followed by the mixin name.
// A class can use multiple mixins, separated by commas.

// Let's create a class called 'Animal' that uses the 'WalkMixin' and 'SwimMixin'.
class Animal with WalkMixin, SwimMixin {}

// Now, let's create an instance of the 'Animal' class and call the 'walk' and 'swim' methods.
void main() {
  var animal = Animal();
  animal.walk(); // Output: I can walk.
  animal.swim(); // Output: I can swim.
}

// In this example, the 'Animal' class is able to use the methods from both 'WalkMixin' and 'SwimMixin'
// without the need for inheritance. This demonstrates the power of mixins in promoting code reusability
// and reducing code duplication.