// In Dart, generics are used to create reusable and flexible code while maintaining type safety.
// Generics can be used with classes, methods, and functions.

// Let's start with a simple example of a generic class.

// This is a generic class called Box with a type parameter T.
// T can be any type, such as int, String, or even a custom class.
class Box<T> {
  // The variable 'content' is of type T, which means it can store any type of data.
  T content;

  // This is the constructor for the Box class, which takes a value of type T as an argument.
  Box(this.content);

  // This method returns the content of the box.
  T getContent() {
    return content;
  }
}

// Now let's see how to use the generic Box class.

void main() {
  // We can create a Box object that stores an integer value.
  Box<int> intBox = Box<int>(42);
  print('The content of intBox is: ${intBox.getContent()}'); // Output: The content of intBox is: 42

  // We can also create a Box object that stores a String value.
  Box<String> strBox = Box<String>('Hello, Dart!');
  print('The content of strBox is: ${strBox.getContent()}'); // Output: The content of strBox is: Hello, Dart!

  // Let's create a custom class called Person.
  class Person {
    String name;
    int age;

    Person(this.name, this.age);
  }

  // We can even create a Box object that stores a Person object.
  Box<Person> personBox = Box<Person>(Person('Alice', 30));
  print('The content of personBox is: ${personBox.getContent().name}, ${personBox.getContent().age}'); // Output: The content of personBox is: Alice, 30
}

// In this example, we used a generic class called Box to store different types of data.
// This demonstrates the flexibility and reusability of generics in Dart.
// By using generics, we can write code that works with multiple data types while maintaining type safety.