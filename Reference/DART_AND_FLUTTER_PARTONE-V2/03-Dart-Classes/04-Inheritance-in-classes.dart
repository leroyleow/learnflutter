// In this Dart file, we will explore the concept of creating a class in Dart programming language.
// We will focus on inheritance, its importance, syntax, overriding methods, the super keyword, and abstract classes.

// III. Inheritance

// A. Definition and importance
// Inheritance is a mechanism in which one class acquires the properties (fields) and behaviors (methods) of another class.
// It allows for code reusability and helps in organizing the code in a better way.

// B. Syntax for inheritance
// To inherit from a class, use the 'extends' keyword followed by the name of the class you want to inherit from.

// Let's create a base class called 'Animal'.
class Animal {
  void eat() {
    print('The animal is eating.');
  }
}

// Now, let's create a class 'Dog' that inherits from the 'Animal' class.
class Dog extends Animal {
  void bark() {
    print('The dog is barking.');
  }
}

// C. Overriding methods
// If a subclass has a method with the same name as a method in its superclass, the method in the subclass is said to override the method in the superclass.

// Let's override the 'eat' method in the 'Dog' class.
class Dog2 extends Animal {
  @override
  void eat() {
    print('The dog is eating.');
  }
}

// D. Super keyword
// The 'super' keyword is used to call a method from the superclass.

// Let's create a class 'Cat' that inherits from the 'Animal' class and uses the 'super' keyword.
class Cat extends Animal {
  @override
  void eat() {
    print('The cat is eating.');
    super.eat(); // Calling the 'eat' method from the superclass 'Animal'.
  }
}


void main() {
  // Testing inheritance and method overriding
  Dog dog = Dog();
  dog.eat(); // Output: The animal is eating.
  dog.bark(); // Output: The dog is barking.

  Dog2 dog2 = Dog2();
  dog2.eat(); // Output: The dog is eating.

  Cat cat = Cat();
  cat.eat(); // Output: The cat is eating.
             //         The animal is eating.

}