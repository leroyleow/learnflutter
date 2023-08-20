// Error Handling in Dart and Flutter

// In this tutorial, we will learn about error handling in Dart and Flutter. Error handling is an essential part of any programming language, as it helps us to manage exceptions and errors that may occur during the execution of our code.

// We will cover the following topics:
// 1. try-catch block
// 2. on and catch clauses
// 3. finally block
// 4. Custom exceptions
// 5. Error handling in asynchronous functions

// 1. try-catch block

// The try-catch block is used to handle exceptions. The code that might throw an exception is placed inside the try block, and the code to handle the exception is placed inside the catch block.

void main() {
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}

// 2. on and catch clauses

// The 'on' clause is used to catch a specific type of exception, while the 'catch' clause is used to catch any type of exception. You can use both 'on' and 'catch' clauses together to handle specific exceptions and perform different actions based on the type of exception.

void main() {
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  } catch (e) {
    print("An unknown error occurred: $e");
  }
}

// 3. finally block

// The finally block is used to execute code regardless of whether an exception was thrown or not. It is placed after the catch block and is executed after the try and catch blocks.

void main() {
  try {
    int result = 12 ~/ 2;
    print("The result is $result");
  } catch (e) {
    print("An error occurred: $e");
  } finally {
    print("This is the finally block");
  }
}

// 4. Custom exceptions

// You can create custom exceptions in Dart by extending the 'Exception' class and implementing the 'toString()' method.

class CustomException implements Exception {
  String errorMessage() {
    return "This is a custom exception";
  }
}

void main() {
  try {
    throw CustomException();
  } catch (e) {
    print(e.errorMessage());
  }
}

// 5. Error handling in asynchronous functions

// In asynchronous functions, we can use 'try-catch' blocks to handle errors in the same way as synchronous functions. However, when using 'async' and 'await', we need to use 'try-catch' blocks inside the 'async' function.

Future<void> asyncFunction() async {
  try {
    int result = await Future.delayed(Duration(seconds: 1), () => 12 ~/ 0);
    print("The result is $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}

void main() {
  asyncFunction();
}

// When using 'then' and 'catchError' with 'Future', we can handle errors using the 'catchError' method.

Future<void> asyncFunction() {
  return Future.delayed(Duration(seconds: 1), () => 12 ~/ 0)
      .then((result) => print("The result is $result"))
      .catchError((e) => print("An error occurred: $e"));
}

void main() {
  asyncFunction();
}

// In this tutorial, we have learned about error handling in Dart and Flutter using try-catch blocks, on and catch clauses, finally blocks, custom exceptions, and error handling in asynchronous functions. Proper error handling is crucial for creating robust and reliable applications.