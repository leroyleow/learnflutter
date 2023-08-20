void main() {
  
  var alpha = 0;
  var beta = 0;
  
//   METHOD ONE
//   print(alpha);
//   alpha = alpha + 1;
//   print(alpha);
  
//   METHOD TWO
//   ++alpha;
//   print(alpha);
  
//   beta++;
//   print(beta);

//  METHOD THREE
//  Now what happens if we're doing a reassignment?
//  Increment alpha BEFORE beta gets its value with ++ BEFORE the var
//   beta = ++alpha;
//   print("Alpha is: $alpha");
//   print("Beta is $beta");
  
  //  METHOD FOUR
//  Now what happens if we're doing a reassignment?
//  Increment alpha AFTER beta gets its value with ++ AFTER the var
  beta = alpha++;
  print("Alpha is: $alpha");
  print("Beta is $beta");
}
 