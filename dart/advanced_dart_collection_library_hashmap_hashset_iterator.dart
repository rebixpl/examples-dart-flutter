//! advanced_dart_collection_library_hashmap_hashset_iterator

//? This provides: 
//* HashMap - is a hash table based implementation of Map
//* HashSet -  is an unordered hash-table based Set implementation. 
//* LinkedList
//* Queue

import 'dart:collection';

void main(){
  //? ------------------------------------- Iterating Collections
  Queue numQ = new Queue();
  numQ.addAll([100,200,300]);
  Iterator i = numQ.iterator; // declaration of iterator
  
  while(i.moveNext()){ // moveNext() function returns a Boolean value indicating whether there is a subsequent entry
    print(i.current); // OUTPUT: 100,200,300
    // current property of the iterator object returns the value of the object that the iterator currently points to.
  }




  //? ------------------------------------- HashMap
  // A HashMap is a hash table based implementation of Map.
  // When you iterate through a HashMap's keys or values, you cannot expect a certain order.
 
  var accounts = new HashMap();
  accounts['dept'] = 'HR';
  accounts['name'] = 'Tom';
  accounts['email'] = 'tom@jd.pl';
  print("HashMap after adding entries: ${accounts}"); // OUTPUT: HashMap after adding entries: {email: tom@jd.pl, dept: HR, name: Tom}

  //? addAll()
  // Adding Multiple Values to a HashMap

  var accounts2 = new HashMap();
  accounts2.addAll({'dept':'HR', 'email':'tom@jhs.com'});
  print("HashMap after adding entries by addAll(): ${accounts2}"); // OUTPUT: HashMap after adding entries by addAll(): {email: tom@jhs.com, dept: HR}
  print("");

  //? Removing Values from a HashMap
  var accounts3 = new HashMap();
  accounts3['dept'] = 'HR';
  accounts3['name'] = 'Tom';
  accounts3['email'] = 'tom@jd.pl';
  print("HashMap after adding entries: ${accounts3}"); // OUTPUT: HashMap after adding entries: {email: tom@jd.pl, dept: HR, name: Tom}
  accounts3.remove('dept'); // remove(key) function
  print("HashMap after removing entry: ${accounts3}"); // OUTPUT: HashMap after removing entry: {email: tom@jd.pl, name: Tom}
  accounts3.clear(); // clear() function
  print("HashMap after clearing entries: ${accounts3}"); // OUTPUT: HashMap after clearing entries: {}
  print("");




  //? ------------------------------------ HashSet
  // A HashSet is an unordered hash-table based Set implementation. 
  Set numberSet = new HashSet();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  for(var no in numberSet){
    print(no); // OUTPUT:  60,20,100,5,70 // note that are unordered results
  }
  print("");

  //? addAll()
  // Adding Multiple Values to a HashSet
  Set numberSet4 = new HashSet();
  numberSet4.addAll([100,200,300]);
  for (var no in numberSet4){ print(no);}  // OUTPUT: 100,200,300

  //? Removing Values from a HashSet
  Set numberSet5 = new HashSet();
  numberSet5.addAll([100,200,300]);
  print("Printing hashet.. ${numberSet5}");  // OUTPUT:  Printing hashet.. {200, 300, 100}
  numberSet5.remove(100);
  print("Printing hashet.. ${numberSet5}"); // OUTPUT:  Printing hashet.. {200, 300}
  numberSet5.clear();
  print("Printing hashet.. ${numberSet5}"); // OUTPUT:    Printing hashet.. {}
}
