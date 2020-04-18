//! Lists

void main() {
  //? Fixed length lists
  var namesFixed = new List<String>(3);
  namesFixed[0] = "Joe";
  namesFixed[1] = "Frankie";
  namesFixed[2] = "Tom";
  //namesFixed[3] = "error"; // this would be an error, out of range
  // namesFixed.add("Joe"); // You can't use add with fixed length list
  log(namesFixed);


  //? Growable lists
  var namesGrowable = new List<String>();
  namesGrowable.add("Joe");
  namesGrowable.add("Frankie");
  namesGrowable.add("Tom");
  namesGrowable.add("Larry");
  log(namesGrowable);

  //? List initialized upfront
  List<String> names= ["Joe", "frankie", "Tom"];
  log(names);
  names.add("Dave"); // Can add, so this list is growable too!
  log(names);
}

void log(List<String> inputList){
  inputList.forEach((n) => print(n));
  print('-------------------------------');
}