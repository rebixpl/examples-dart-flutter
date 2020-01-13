//! Dart VARIABLES

void main(){
  //? Declaration of variable 'var'
  var name = 'Smith'; // The variable called name contains a reference to a String object with a value of “Smith”
  print(name);



  //? type-checking the variable data type
  // Type-checking ensures that a variable holds only data specific to a data type. 
  String surname = "Kowalski"; // String
  int numTen = 10; // int
  print(surname);
  print(numTen);



  //? uninitialized variables have an initial value of 'null'
  int numNull; // output: null
  print(numNull);



  //? dynamic keyword
  dynamic x = "tom";
  print(x);
  x = 234.42; // changing type from String to double
  print(x);



  //? final and const
  // they are both constants
  // 'const' keyword is used to represent a compile-time constant, so 'const' are implicitly final and they CANNOT be changed
  // 'final' variable can only be set once
  
  //! SYNTAX:
  //* final   variable_name
  //* final   data_type   variable_name
  //* const   variable_name
  //* const   data_type   variable_name

  const Pi = 3.14;
  const Area = Pi * 12 * 12;
  print("The output is ${Area}");

  final val1 = 12;
  print(val1);

  final v1 = 12;
  const v2 = 13;
  // v1 = 12; // ERROR
  // v2 = 12; // ERROR

}
