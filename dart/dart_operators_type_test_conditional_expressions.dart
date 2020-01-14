//! Dart OPERATORS

void main(){
  //? Arithmetic operators
  var num1 = 101;
  var num2 = 2;
  var res = 0;
  var res2;

  res = num1+num2; //* ADDICTION ( + )
  print("Addiction: ${res}");

  res = num1-num2; //* SUBSTRACTION ( - )
  print("Substraction: ${res}");

  res = num1*num2; //* MULTIPLICATION ( * )
  print("Multiplication: ${res}");

  res2 = num1/num2; //* DIVISION ( / )
  print("Division: ${res2}");

  res = num1~/num2; //* DIVISION RETURNING INTEGER ( ~/ )
  print("Division returning Integer: ${res}");

  res = num1%num2; //* REMAINDER ( % )
  print("Remainder: ${res}");

  num1++; //* INCREMENTATION IN C++ STYLE ( x++ )
  print("Increment: ${num1}");

  num2--; //* DECREMENTATION IN C++ STYLE ( x-- )
  print("Decrement: ${num2}");



  //? Equality and Relational Operators
  //! They're like in other programming languages (C++)
  //* '>' -> GREATER THAN
  //* '<' -> LESSER THAN
  //* '>=' -> GREATER THAN OR EQUAL TO
  //* '<=' -> LESSER THAN OR EQUAL TO
  //* '==' -> EQUALITY
  //* '!=' -> NOT EQUAL



  //? Type test operators
  //* 'is' -> True if the object has the specified type
  int n = 2;
  print(n is int); // OUTPUT: true

  //* 'is!' -> False if the object has the specified type
  double n2 = 2.20;
  var num = n2 is! int;
  print(num); // OUTPUT: true



  //? Bitwise operators in DART
  var a = 2; // Bit presentation 10
  var b = 3; // Bit presentation 11

  var result = (a & b); //* Bitwise AND -> 'a & b' 
  print("(a & b) => ${result}");

  result = (a | b);  //* Bitwise OR -> 'a | b'
  print("(a | b) => ${result}");

  result = (a ^ b); //* Bitwise XOR -> 'a ^ b'
  print("(a ^ b) => ${result}");

  result = (~b); //* Bitwise NOT -> '~b'
  print("(~b) => ${result}");

 result = (a << b); //* Left shift -> 'a << b'
 print("(a << b) => ${result}");

 var result2 = {a >> b}; //* Right shift -> 'a >> b'
 print("(a >> b) => ${result2}");



 //? Assignment Operators
 //! They're like in other programming languages (C++)
 /*
a+=b : a = a + b                       
a-=b : a = a - b                            
a*=b' : a = a * b                                 
a/=b : a = a / b                      
a%=b : a = a % b
*/



//? Logical operators
//! They look like in C++
//* (&&) -> AND -> (A > 10 && B > 10)
//* (||) -> OR -> (A > 10 || B > 10)
//* (!) -> NOT -> !(A > 10)



//? Conditional Expressions
//! They are short expressions that might otherwise require if_else statement

//* condition   ?   expr1:expr2
// If the condition is TRUE, then the expression evaluates expr1; otherwise, it evaluates expr2
var g = 10;
var results = g > 10 ? "value is greater than 10":"value is lesser than or equal 10";
print(results);

//* expr1  ??  expr2
// if expr1 is non-null, returns its value; otherwise evaluates and returns value of expr2
var f = null;
var o = 12;
var result3= f ?? o;
print(result3);
}
