// Dart Tutorial: The "late" Keyword

// The "late" keyword in Dart is used to declare variables that are initialized
// later, but their initialization is guaranteed before they are accessed.

// Example 1: Using "late" with instance variables
class ExampleClass {
  late String lateVariable; // Declare a late variable

  void initializeVariable() {
    lateVariable = 'Initialized value'; // Initialize the late variable
  }

  void accessVariable() {
    print(lateVariable); // Access the late variable
  }
}

void main() {
  var example = ExampleClass();
  example.initializeVariable();
  example.accessVariable(); // Output: Initialized value
}

// In this example, we declare a late variable called "lateVariable" inside the
// ExampleClass. It is not initialized immediately, but its initialization is
// guaranteed before it is accessed. In the main function, we create an instance
// of ExampleClass and call the initializeVariable method to initialize the
// lateVariable. Finally, we call the accessVariable method to access and print
// the value of lateVariable, which is "Initialized value".

// Example 2: Using "late" with local variables
void exampleFunction() {
  late int lateVariable; // Declare a late variable

  void initializeVariable() {
    lateVariable = 42; // Initialize the late variable
  }

  void accessVariable() {
    print(lateVariable); // Access the late variable
  }

  initializeVariable();
  accessVariable(); // Output: 42
}

void main() {
  exampleFunction();
}

// In this example, we declare a late variable called "lateVariable" inside
// the exampleFunction. The lateVariable is not initialized immediately, but
// its initialization is guaranteed before it is accessed. The initializeVariable
// function initializes the lateVariable with the value 42. Finally, we call
// the accessVariable function to access and print the value of lateVariable,
// which is 42.

// Note: The late keyword can only be used with instance and local variables.
// It cannot be used with top-level variables, static variables, or fields
// marked as final or const.

// That's it! You've learned how to use the "late" keyword in Dart.
