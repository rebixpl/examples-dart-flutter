// Dart 2.6.1 
//! Inserting Elements into a List

main() {
  // List.add() -> function appends the specified value to the end of the List and returns a modified List object.  
  List myList = [1,2,3];
  myList.add(4);
  print(myList); // OUTPUT: [1,2,3,4]
  
  
  // List.addAll() -> function accepts multiple values separated by a comma and appends these to the List.
  myList.addAll([5,6,7]);
  print(myList); // OUTPUT: [1,2,3,4, 5,6,7]
  
  
  // insert() -> function accepts a value and inserts it at the specified index.
  // SYNTAX: List.insert(index,value)
  myList.insert(0,8);
  print(myList); // OUTPUT: [8,1,2,3,4,5,6,7]
  
  
  // insertAll() -> function inserts the given list of values, beginning from the index specified
  // SYNTAX: List.insertAll(index, iterable_list_of _values)
  myList.insertAll(2, [10,11,12]);
}
