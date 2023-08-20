// In Dart, the "this" keyword is used to refer to the current instance of a class.
// It is mainly used in constructors, instance methods, and instance variables.

class Student {
  String name;
  int age;

  // Here, we use the "this" keyword in the constructor to assign the values
  // of the parameters to the instance variables.
  Student(this.name, this.age);

  // This is an instance method that uses the "this" keyword to access the
  // instance variables.
  void introduceYourself() {
    print("Hello, my name is ${this.name} and I am ${this.age} years old.");
  }

  // This is another instance method that uses the "this" keyword to call
  // another instance method.
  void greet() {
    print("Hi!");
    this.introduceYourself();
  }
}

void main() {
  // Create a new instance of the Student class.
  Student student1 = Student("Alice", 20);

  // Call the greet() method, which uses the "this" keyword.
  student1.greet();
}

// In this example, we used the "this" keyword in the constructor to assign
// the values of the parameters to the instance variables. We also used it
// in the instance methods to access the instance variables and call another
// instance method.

// The "this" keyword helps to avoid confusion between instance variables and
// local variables or parameters with the same name. It also makes the code
// more readable and easier to understand.