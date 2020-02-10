// Dart 2.6.1 
// Updating a list and removing List item

main() {
  // Updating the index  
  List l = [1,2,3];
  l[0] = 123;
  print(l); // OUTPUT: [123,2,3]
  
  
  // replaceRange() -> This function replaces the value of the elements within the specified range.
  // SYNTAX -> List.replaceRange(int start_index,int end_index,Iterable <items>)
  List l2 = [1,2,3,4, 5,6,7,8,9];
  print("The value of list before replacing ${l2}");
  l2.replaceRange(0, 3, [300, 400, 500, 599]);
  print("The value of list after replacing the items between the range [0-3] is  ${l2}");
  
  
  // List.remove() -> function removes the first occurrence of the specified item in the list
  List l3 = [1,2,3, 4,5,6,7,8,9];
  print(l3); // OUTPUT: [1,2,3,4, 5,6,7,8,9]
  var res = l3.remove(1);
  print(l3); // OUTPUT: [2,3,4,5,6,7,8,9]
 
  
  // List.removeAt -> function removes the value at the specified index and returns it.
  // SYNTAX -> List.removeAt(int index)
  List l4 = [1,2,3, 4,5,6];
  print("The value of list before removing the list element ${l4}"); // OUTPUT: [1,2,3,4, 5,6]
  dynamic res2 = l4.removeAt(1);
  print("The removed value ${res2}"); // OUTPUT: 2
  print("The value of list after removing the list element: ${l4}"); // OUTPUT: [1,3,4,5,6]
  
  
  // List.removeRange() - > function removes the items within the specified range.
  // SYNTAX -> List.removeRange(int start, int end)
  List l5 = [1, 2, 3, 4, 5, 6, 7];
  print(" The value before removing: ${l5}"); // OUTPUT: [1, 2, 3, 4, 5, 6, 7]
  l5.removeRange(0,3);
  print("The value after removing (0-3) indexes values: ${l5}"); // OUTPUT: [4, 5, 6, 7]
  
}
