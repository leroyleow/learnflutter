// In this Dart file, we will explore the concepts of creating a class, instance variables, methods, 



// Let's start by creating a simple class called 'Person'.
class Person {
  // These are instance variables. They represent the properties of a Person object.
  String name = '';
  int age = 0;


  // This is a method. It defines the behavior of the Person class.
  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

// Now let's see how to use the class,  

void main() {
  // Creating a new instance of the Person class using the default constructor.
  var person1 = Person();
  person1.introduce();
  
  // Setting attribute values:
  person1.name  = "Jose";
  person1.age = 30;


  // Calling the 'introduce' method on the person1 object.
  person1.introduce();

}