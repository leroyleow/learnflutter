// In this Dart file, we will explore the concept of creating a class in Dart programming language.
// We will focus on explaining constructors, including default constructors, named constructors,
// parameterized constructors, and constant constructors.

// Let's start by creating a simple class called 'Person'.
class Person {
  // Here, we define two instance variables: 'name' and 'age'.
  String name;
  int age;

  // Default constructor:
  // A default constructor is automatically provided by Dart if you don't define any constructor.
  // It initializes the instance variables with their default values (null for objects, 0 for numbers, etc.).
  // In this case, we don't need to write the default constructor explicitly, as Dart will provide it for us.

  // Parameterized constructor:
  // A parameterized constructor allows you to pass values to initialize the instance variables when creating an object.
  Person(this.name, this.age);

  // Named constructor:

  // DONT FORGET TO SET DEFAULT VALUES ABOVE FOR THIS ONE!
  // Named constructors are useful when you want to provide multiple ways to create an object.
  // Here, we define a named constructor called 'fromMap' that takes a Map as an argument and initializes the instance variables.
  Person.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    age = map['age'];
  }

 
}

void main() {
  // Now, let's create some objects of the 'Person' class using different constructors.

  // Using the default constructor:
  Person person1 = Person('John Doe', 30);
  print('Person 1: Name: ${person1.name}, Age: ${person1.age}');

  // Using the named constructor 'fromMap':
  Person person2 = Person.fromMap({'name': 'Jane Doe', 'age': 28});
  print('Person 2: Name: ${person2.name}, Age: ${person2.age}');
 
}