void main() {
//  Set is a collection of unique items
 var elements = {'O','K','Ni','Rd'};
//   Add item to set
 elements.add('F');
//   Add an entire list or Set
 elements.addAll(['H','C']);
 print(elements);
//   Its always unique elements, can't add more than once!
 elements.add('C');
 print(elements);
}
 