//! collection_sets_lists_maps_queue

//? Dart doesn’t support arrays. 
//? Dart collections can be used to replicate data structures like an array. 

//? Dart collections:
//? *List - A List is simply an ordered group of objects. 
//? *Set - Set represents a collection of objects in which each object can occur only once. 
//? *Maps - The Map object is a simple key/value pair.
//? *Queue - A Queue is a collection that can be manipulated at both ends.

import 'dart:collection'; // It's needed to queue collection

void main(){
  //? --------------------------------- LISTS
  List logTypes = new List();
  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");

  // iterating across the list
  for(String type in logTypes){
    print(type); // OUTPUT: WARNING, ERROR, INFO
  }

  // printing size of the list
  print(logTypes.length); // OUTPUT: 3
  logTypes.remove("WARNING");

  print("size after removing: ");
  print(logTypes.length); // OUTPUT: 3
  print("");




  //? -------------------------------- SETS
  Set numberSet = new Set();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  print("Default implementation: ${numberSet.runtimeType}");

  // all elements are retrieved in the order in which they are inserted
  for(var no in numberSet){
    print(no); // OUTPUT: 100, 20, 5, 60, 70
  }
  print(" ");


  //? set with iterable
  // SYNTAX -> Identifier = new Set.from(Iterable)
  // Iterable represents a list of values to add to a Set.

  Set numberSet2 = new Set.from([12,13,14]);
  print("Default implementation :${numberSet2.runtimeType}");

   // all elements are retrieved in the order in which they are inserted
  for(var no in numberSet2){
    print(no); // OUTPUT: 12,13,14
  }
  print(" ");




  //? ----------------------------------- MAPS
  var details = new Map();
  details["Username"] = "admin";
  details["Password"] = "1234";
  print(details); // OUTPUT: {Username: admin, Password: 1234}
  print("");




  //? --------------------------------------- QUEUE
  // SYNTAX -> Identifier = new Queue();

  Queue queue = new Queue();
  queue.add(10);
  queue.add(20);
  queue.add(30);
  queue.add(40);
  for (var no in queue){
    print(no); // OUTPUT: 10,20,30,40
  }


  //? addAll() function
  // enables adding multiple values to a queue, all at once
  Queue queue2 = new Queue();
  queue2.addAll([10,12,14,15]);
  for (var no in queue2){
    print(no); // OUTPUT: 10,12,14,15
  }
  print("");


  //? Adding Value at the Beginning and End of a Queue:

  //? addFirst()
  // add a value at the beginning of a Queue 
  Queue numQ = new Queue();
  numQ.addAll([100,200,300]);
  print("Printing Q... ${numQ}"); // OUTPUT: Printing Q... {100, 200, 300} 
  numQ.addFirst(400);
  print("Printing Q... ${numQ}"); // OUTPUT:  Printing Q... {400, 100, 200, 300}
  print("");

  //? addLast()
  //  add a value at the end of a Queue
  Queue numQ2 = new Queue();
  numQ2.addAll([100,200,300]);
  print("Printing Q2... ${numQ2}"); // OUTPUT: Printing Q2... {100, 200, 300}
  numQ2.addLast(400);
  print("Printing Q2... ${numQ2}"); // OUTPUT: Printing Q2... {100, 200, 300, 400}
}
