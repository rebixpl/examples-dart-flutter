//! Enumeration_enum
//? enumeration is used for defining named constant values 
/* SYNTAX

enum enum_name {
  enumeration list // its comma-separated list of identifiers, the value of fisrt enumeration identifier is 0
}

SYNTAX */

enum Status {
  none, // #0
  running, // #1
  stopped, // #2
  paused // #3
}

void main(){
  print(Status.values); // 'enum.values' ->  prints out all values of enum (by identifiers)
  // OUTPUT: [Status.none, Status.running, Status.stopped, Status.paused]
  Status.values.forEach((v) => print('value: ${v}, index: ${v.index}')); // 'value.index' -> returns index of the value identifier
  // OUTPUT: value: Status.none, index: 0
  // OUTPUT: value: Status.running, index: 1
  // OUTPUT: value: Status.stopped, index: 2
  // OUTPUT: value: Status.paused, index: 3
  print('running: ${Status.running}, ${Status.running.index}'); // OUTPUT: running: Status.running, 1
  print('running index: ${Status.values[1]}'); // OUTPUT: running index: Status.running
  
}
