//! generics_type_safe_collections_generic_list_set_queue_map

//? In DART a collection can host values of various types.
//? However it can be make  (with generics) to hold homogenous values. ( the same type)
//? Such collections are termed as type-safe collections.

import 'dart:collection';

//////? SYNTAX
// collection_name <data_type> identifier = new collection_name<data_type>

void main(){
  ////////////////////////////////////? Generic List
  List <String> logTypes = new List<String>();
  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");
  // logTypes.add(1); // ERROR: the type must be 'String'

  // iterating across the list
  for (String type in logTypes){
    print(type); // OUTPUT: WARNING /n  ERROR /n INFO
  }
  print(" ");



  ////////////////////////////////////? Generic Set
  Set <int> numberSet = new Set <int>();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  // numberSet.add("Linus"); // ERROR: the type must be 'int'

  for (var no in numberSet){
    print(no); // OUTPUT: 100 /n 20 /n 5 /n 60 /n 70
  }
  print(" ");



  ////////////////////////////////////? Generic Queue
  Queue <int> queue = new Queue<int>();
  print("Default implementation ${queue.runtimeType}"); // OUTPUT: Default implementation ListQueue<int>
  queue.addLast(10);
  queue.addLast(20);
  queue.addLast(30);
  queue.addLast(40);
  queue.removeFirst();

  for (int no in queue){
    print(no); // OUTPUT: 20 /n 30 /n 40
  }
  print(" ");



  ////////////////////////////////////? Generic map
 //* A type-safe map declaration specifies the data types of −
  //* -> The key
  //* -> The value

  Map <String, String >m={'name':'Tom', 'id':'E1001cipa'};
  print('Map: ${m}'); // OUTPUT: Map: {name: Tom, id: E1001cipa}
}
