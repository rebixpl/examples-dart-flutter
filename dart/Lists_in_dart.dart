//! Lists in dart

// A List is simply an ordered group of objects

main() {
  //Fixed Length List
  // Syntax -> var ListName = new List(initial_size);
  // This list cannot grow or shrink at runtime.
  var lst = new List(3);
  lst[0] = 12;
  lst[1] = 10;
  lst[2] = 32;
  print(lst); // OUTPUT: [12,10,32]
  
  // Growable list
  // A growable list’s length can change at run-time. 
  // Syntax -> var ListName = new List()
  // var ListName = [23,54,938]
  
  var lst2 = new List();
  lst2.add(20);
  lst2.add(737); // the add() function is used to dynamically add elements to the list. 
  print(lst2);
  
  // LIST PROPERTIES AND METHODS
  
  // list -> returns the first element in the list. 
  var lst3 = new List();
  lst3.add(10);
  lst3.add(36);
  print("The first element of the list is: ${lst3.first} ");
  
  // isEmpty -> Returns true if the collection has no elements. 
  var lst4 = new List();
  lst4.add(90);
  lst4.add(43);
  print(lst4.isEmpty); // OUTPUT: false
  
  // length -> Returns the size of the list. 
  lst4.add(64);
  print("The length of the list is : ${lst4.length}"); // OUTPUT: 3
  
  // last -> Returns the last element in the list. 
  print("The last element of the list is: ${lst4.last}"); // OUTPUT: 64
    
  // reversed -> Returns an iterable object containing the list values in the reverse order.
  lst4.add(420);
  print("The list values in reverse order: ${lst4.reversed}"); // OUTPUT: (420, 64, 43, 99)
}
