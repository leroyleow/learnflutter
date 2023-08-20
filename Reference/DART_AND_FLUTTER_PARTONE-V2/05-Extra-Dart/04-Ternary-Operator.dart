void main() {
  // Ternary operators provide a concise way to write conditional expressions in Dart.
  // The syntax of a ternary operator is: condition ? expression1 : expression2

  // Example 1: Basic Usage
  // The following ternary operator checks if a given number is even or odd and prints a corresponding message.
  int number = 7;
  String result = number % 2 == 0 ? 'Even' : 'Odd';
  print('The number $number is $result.');

  // Example 2: Assignment
  // Ternary operators can also be used to assign a value based on a condition.
  int a = 10;
  int b = 5;
  int maxValue = a > b ? a : b;
  print('The maximum value between $a and $b is $maxValue.');

  // Example 3: Returning a Value
  // Ternary operators can be used to return a value from a function based on a condition.
  bool isEven(int num) => num % 2 == 0 ? true : false;
  print('Is 10 even? ${isEven(10)}');
  print('Is 7 even? ${isEven(7)}');
}

// HERE WOULD BE THE EQUIVALENT IF/ELSE STATEMENTS:


// void main() {
  // Ternary operators provide a concise way to write conditional expressions in Dart.
  // The syntax of a ternary operator is: condition ? expression1 : expression2

  // Example 1: Basic Usage
  // The following ternary operator checks if a given number is even or odd and prints a corresponding message.
  int number = 7;
  String result;
  if (number % 2 == 0) {
    result = 'Even';
  } else {
    result = 'Odd';
  }
  print('The number $number is $result.');

  // Example 2: Assignment
  // Ternary operators can also be used to assign a value based on a condition.
  int a = 10;
  int b = 5;
  int maxValue;
  if (a > b) {
    maxValue = a;
  } else {
    maxValue = b;
  }
  print('The maximum value between $a and $b is $maxValue.');

  // Example 3: Returning a Value
  // Ternary operators can be used to return a value from a function based on a condition.
  bool isEven(int num) {
    if (num % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }
  print('Is 10 even? ${isEven(10)}');
  print('Is 7 even? ${isEven(7)}');
// }

