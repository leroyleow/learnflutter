void main() {
//   Creating a list
  var myList = ['A','B','C','D','E'];
//   Grabbing an item from a list
  print(myList[0]);
//   Grab subset of list
  print(myList.sublist(1,3));
//   Get the length of a list
  print(myList.length);
//   Concatenate lists
  var listOne = ['A','B'];
  var listTwo = ['X','Z'];
  print(listOne+listTwo);
//   The ... spread operator
  print([0,1,2,...listTwo]);
}
 