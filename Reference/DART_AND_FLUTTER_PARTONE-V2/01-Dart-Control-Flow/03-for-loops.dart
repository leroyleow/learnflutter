void main() {
   
  var myList = ['a','b','c'];
  var mySet = {'x','y','z'};
  var myMap = {'a':0,'b':1,'c':2};
  
  // LOOP LIST
  for (final item in myList){
    print(item);
  }
  // LOOP SET
  for (final item in mySet){
    print(item);
  }
  //LOOP MAP via .keys
  for (final key in myMap.keys){
    print(key);
    print(myMap[key]);
    print('\n');
  }
  // LOOP MAP forEach()
  // PAY CLOSE ATTENTION TO () and {} HERE!!
  myMap.forEach((key,value){
    print(key);
    print(value);
  });
  // LOOP via Iteration
  for (var i=0;i<3;i++){
    print(i);
  }
  // LOOP via Iteration and indexing
  for (var i=0;i<myList.length;i++){
    print(myList[i]);
  }
}
 