void main(){
  
  
//   TYPICAL ASSIGNMENTS CAN BE REASSIGNED
  var a = 0;
  print(a);
  a = 20;
  print(a);
  
  
// FINAL (CAN NEVER REASSIGN VARIABLE!)
  final version = 2.1;
  print(version);
//   version = 3.2; // ERROR!
  
//   final can still be used for runtime calculations
//   for example:
  final result = a*10;
  print(result);
  
//   const is more restrictive, its state can be
//   determined at compile time, meaning you can assign it
//   to the results of runtime calculations, the trade-off
//   is const creates backend efficient variables!
  const myVar = 100;
  print(myVar);
//   const anotherVar = a*10; //Error: Compilation failed. Not a constant expression.
}