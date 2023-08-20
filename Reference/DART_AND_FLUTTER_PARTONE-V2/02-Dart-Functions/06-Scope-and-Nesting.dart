// This is an example of how scope and nesting work in Dart functions.

// Global variables are accessible from anywhere in the file.
int globalVariable = 10;

void main() {
  // Local variable here is only accessible within the main function.
  int localVariable = 5;

  print('Global variable: $globalVariable'); // Output: Global variable: 10
  print('Local variable: $localVariable'); // Output: Local variable: 5

  // Nested functions have access to variables defined in their parent function.
  void nestedFunction() {
    int nestedVariable = 20;

    print('Global variable: $globalVariable'); // Output: Global variable: 10
    print('Local variable: $localVariable'); // Output: Local variable: 5
    print('Nested variable: $nestedVariable'); // Output: Nested variable: 20
  }

  nestedFunction(); // Call the nested function.

  // Variables defined in nested functions are not accessible from outside.
  // print(nestedVariable); // Error: The getter 'nestedVariable' isn't defined for the current context.
}

// Variables defined outside functions are global and can be accessed from anywhere in the file.
void anotherFunction() {
  print('Global variable: $globalVariable'); // Output: Global variable: 10
  // print('Local variable: $localVariable'); // Error: Local variable can't be accessed from outside its function.
}