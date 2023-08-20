void main() {
var employees = {
  // Key:    Value
  'David': 10,
  'Claire': 5,
  'Calvin': 3
};
  print(employees['David']);
//   Add a new employee:
  employees['Zed'] = 1;
  print(employees);
//   Keys not present in Map return a Null
  print(employees['MISSING']);
}
 