// This is an example of how to use arrow notation in Dart functions.

void main() {
  // The traditional function syntax uses the 'function' keyword and curly braces.
  int traditionalSquare(int num) {
    return num * num;
  }

  // Arrow notation allows us to use a more concise syntax for simple functions.
  int arrowSquare(int num) => num * num;

  // Both traditional and arrow functions can be assigned to variables.
  var traditionalVariable = traditionalSquare(5);
  var arrowVariable = arrowSquare(5);

  print('Traditional square: $traditionalVariable'); // Output: Traditional square: 25
  print('Arrow square: $arrowVariable'); // Output: Arrow square: 25

  // Arrow notation can also be used for functions that return void.
  void printMessage(String message) => print('Message: $message');

  printMessage('Hello, World!'); // Output: Message: Hello, World!
}