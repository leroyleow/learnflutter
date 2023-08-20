void main(){
 //MAIN
  print('MAIN');
  
  var myVar = myFunction(1,2);
  print(myVar);
  
  var uhoh = newFunction(1,2);
  print(uhoh);
  
  print(helloFunction('Jose'));
  
  // no arguments so goes with default
  print(helloWithDefault());
  // can overwrite, but must name parameter
  // print(helloWithDefault('Jose')); //FAILS
  print(helloWithDefault(name:'Jose'));
  
//   myRequired('one','two') // FAILS
  myRequired(word1:'one',word2:'two');
  print('END of MAIN');
 
}

// Perhaps Too Dynamic
myFunction(num1,num2){
  return num1+num2;
}

// Type safety in parameters
newFunction(int num1,int num2){
  return num1+num2;
}

// default values
helloFunction(name){
  return "Hello $name";
}

helloWithDefault({String name='Computer'}){
  return "Hello $name";
}
 
 