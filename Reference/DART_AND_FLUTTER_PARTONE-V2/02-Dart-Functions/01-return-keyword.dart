void main(){
  // MAIN
  // .dart --> main()
  print("Main");
  // Won't see anything if you
  // don't assign AND print() result
  myFunction();
  print('Ran myFunction()');
  int result = myFunction();
  print('Ran myFunction() and output was $result');
  var dynamicResult = dynamicFunction();
  print('Ran dynamicFunction and got: $dynamicResult');
}

int myFunction(){
  // myFunction() 
  return 1+1;
}

dynamicFunction(){
  // still works without data type
  return 2+2;
}