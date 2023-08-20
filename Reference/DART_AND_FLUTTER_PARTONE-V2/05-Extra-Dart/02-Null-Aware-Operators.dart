void main() {
  // Dart introduced Null Assertion Operators to handle null safety.
  // These operators help in expressing nullability of variables and accessing their values safely.

  // 1. Null-Aware Assignment Operator (??=)
  // The null-aware assignment operator assigns a value to a variable only if the variable is currently null.

  int? number; // Declare a nullable variable
  print(number); // Output: null

  number ??= 10; // Assign a value only if 'number' is null
  print(number); // Output: 10

  number ??=
      20; // Since 'number' is already assigned a value, the assignment does not occur
  print(number); // Output: 10

  // 2. Null-Aware Access Operator (?.)
  // The null-aware access operator allows accessing properties and methods of an object if the object is not null.
  // If the object is null, the expression returns null without causing a null exception.

  String? text; // Declare a nullable variable
  int length = text?.length ??
      0; // Access the 'length' property of 'text' if 'text' is not null
  print(length); // Output: 0

  text = "Hello, World!"; // Assign a value to 'text'
  length = text?.length ?? 0; // Access the 'length' property of 'text'
  print(length); // Output: 13

  // 3. Null Assertion Operator (!)
  // The null assertion operator tells the Dart analyzer to trust that a variable is not null.
  // It is used when the analyzer is unable to determine that a variable has a non-null value, but the developer knows it's safe.

  String? message; // Declare a nullable variable
  print(message!
      .length); // Output: Unhandled exception (Null check operator used on a null value)

  message = "Hello, Dart!"; // Assign a value to 'message'
  print(message!.length); // Output: 12 (No exception occurs)

  // Note: Using the null assertion operator (!) incorrectly may lead to runtime null exceptions.
}


// This script provides an overview of the three main null assertion operators in Dart: the Null-Aware Assignment Operator (??=), the Null-Aware Access Operator (?.), and the Null Assertion Operator (!).

// The Null-Aware Assignment Operator (??=) assigns a value to a variable only if the variable is currently null. It helps in initializing nullable variables without overwriting their values if they are already assigned.

// The Null-Aware Access Operator (?.) allows accessing properties and methods of an object if the object is not null. If the object is null, the expression returns null without causing a null exception. This operator is particularly useful when chaining property accesses or method calls on potentially null objects.

// The Null Assertion Operator (!) tells the Dart analyzer to trust that a variable is not null, even if the analyzer is unable to determine it. It should be used with caution and only when the developer is confident that the variable has a non-null value.

// Remember to use null assertion operators carefully and ensure they are used correctly to avoid runtime null exceptions.