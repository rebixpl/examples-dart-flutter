//! NUMBERS

void main(){
  //? Number types
  //* => int
  //* => double
  int num1 = 10;
  double num2 = 10.50;
  print(num1);
  print(num2);



  //? Parsing
  //* parse() static function allows parsing a string containing numeric literal into a number
  //* String -> number (int, double)
  String textNumber = '10.91';
  var x = num.parse(textNumber);
  print("${x}");
  print(num.parse('12'));



  //! NUMBER PROPERTIES

  //? hashcode property
  /*
  A hash code is a single integer which represents the state of the object that affects operator == comparisons.
  All objects have hash codes. The default hash code represents only the identity of the object, 
  the same way as the default operator == implementation only considers objects equal if they are identical 
  */

  int n = 5000;
  print(n.hashCode);



  //? isFinite property
  // true if the number is finite; otherwise false
  n = 5000;
  print(n.isFinite);



  //? isInFinite property
  // True if the number is positive infinity or negative infinity; otherwise, false.
  n = 5000;
  print(n.isInfinite);
  print("");



  //? isNegative property
  // True if the number is negative; otherwise, false.
  int posNum = 10;
  int negNum = -10;

  print(posNum.isNegative);
  print(negNum.isNegative);
  print("");



  //? sign property
  // Returns minus one, zero or plus one depending on the sign and numerical value of the number.
  posNum = 10;
  negNum = -12;
  int valZero = 0;

  print(posNum.sign);
  print(negNum.sign);
  print(valZero.sign);
  print("");



  //? isEven property
  // Returns true if the number is an even number.
  posNum = 10;
  print(posNum.isEven);



  //? isOdd property
  // Returns true if the number is an odd number.
  posNum = 10;
  print(posNum.isOdd);
  print("");



  //! NUMBER METHODS

  //? abs method
  // returns an integer representing the absolute value of a number ( -x => x )
  var a = -2;
  var aa = 2.443;
  print(a.abs()); // OUTPUT: 2
  print(aa.abs()); // OUTPUT: 2.443



  //? ceiling method
  // returns the ceiling value,that is the smallest integer greater than or equal to a number
  aa = 2.4;
  var aaa = 1.1;
  print("The ceiling value of 2.4 = ${aa.ceil()}");
  print("The ceiling value of 1.1 = ${aaa.ceil()}");
  print("");



  //? compareTo method
  // returns an integer indicating the relationship between the two numbers
  /*
  0 − if the values are equal.
  1 − if the current number object is greater than the specified numeric value.
  -1 − if the current number object is lesser than the specified numeric value.
  */
  var c = 2.4;
  print(c.compareTo(12));
  print(c.compareTo(2.4));
  print(c.compareTo(0));
  print("");



  //? floor method
  // returns the largest integer less than or equal to a number
  c = 2.9;
  print("The floor value  of 2.9 = ${c.floor()}");



  //?  remainder method
  // this method returns a remainder after dividing the two numbers
  // x - represents a divisor
  var z = 10;
  var zz = 17;
  print(z.remainder(2));
  print(zz.remainder(2));
  print("");



  //? round method
  // Returns the integer closest to the current numbers.
  double n1 = 12.023;
  double n2 = 12.89;
  
  var value = n1.round();
  print(value);

  value = n2.round();
  print(value);



  //? toDouble method
  // Returns the double equivalent of the number.
  int a1 = 2;
  var value2 = a1.toDouble();
  print("Output = ${value2}");



  //? toInt method
  // Returns the integer equivalent of the number.
  n1 = 2.9;
  var value3 = n1.toInt();
  print("Output = ${value3}"); // OUTPUT: 2



  //? toString method
  // Returns the string equivalent representation of the number
  int val1 = 2;
  var value4 = val1.toString();
  print(value4);
  print(value4 is String); // OUTPUT: true



  //? truncate method
  // Returns an integer after discarding any fractional digits.
  double u1 = 2.123;
  var value5 = u1.truncate();
  print("The truncated value of 2.123 = ${value5}");
}
