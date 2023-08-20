void main() {
  // STANDARD BEHAVIOR

  var employees = {'bob': 10, 'mary': 20};
  print(employees['bob']);
  // NOT IN MAP!
  // but still reports 'null' rather than an error
  print(employees['charlie']);

  // NULL SAFETY:
  // Does not allow you to override a data type with null
//   int someNum = null;

  // What if you did want to have a data type be nullable?
  // You can use the ? operator

  // This is REDUNDANT! BAD PRACTICE:
  // https://dart-lang.github.io/linter/lints/avoid_init_to_null.html
  int? someNum = null;

  // INSTEAD DO THIS:
  int? someNum; // Since by using ? we imply its null
}
