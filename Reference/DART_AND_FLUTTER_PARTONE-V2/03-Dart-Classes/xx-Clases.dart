// In Dart, a class is a blueprint for creating objects. It defines properties (variables) and methods (functions) that an object can have.

// To define a class, use the 'class' keyword followed by the class name and a pair of curly braces.
class Person {
  // Inside the class, you can define properties (variables) and methods (functions).

  // Properties
  String name;
  int age;

  // Constructor
  // A constructor is a special method that is called when an object is created. It is used to initialize the properties of the object.
  // The constructor has the same name as the class and can have optional parameters.
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Methods
  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  // To create an object of a class, use the 'new' keyword followed by the class name and the constructor parameters (if any).
  Person person1 = new Person('Alice', 30);

  // Accessing properties and methods
  // Use the dot (.) operator to access the properties and methods of an object.
  print(person1.name); // Output: Alice
  print(person1.age); // Output: 30
  person1.sayHello(); // Output: Hello, my name is Alice and I am 30 years old.

  // Creating another object
  Person person2 = new Person('Bob', 25);
  print(person2.name); // Output: Bob
  print(person2.age); // Output: 25
  person2.sayHello(); // Output: Hello, my name is Bob and I am 25 years old.
}