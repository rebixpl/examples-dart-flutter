//! Runes_codeUnits
//? A rune is an integer representing a Unicode code point.
//? a rune is other name of code unit :)

import 'dart:core';
void main(){
  // String code units / runes can be accessed in three ways −
  // --> Using String.codeUnitAt() function
  // --> Using String.codeUnits property
  // --> Using String.runes property


  //? codeUnitAt() function
  // SYNTAX -> String.codeUnitAt(int index);
  String x = "Runes";
  print(x.codeUnitAt(0)); // OUTPUT: 82 [thats 'R' in Unicode ASCII]


  //? codeUnits property
  // SYNTAX -> string.codeUnits;
  String c = 'Runes';
  print(c.codeUnits); // OUTPUT: [82, 117, 110, 101, 115]


  //? runes property
  // SYNTAX -> string.runes;
  "A string".runes.forEach((int rune) {
    var character = new String.fromCharCode(rune); // funkcja fromCharCode(rune) zamienia char code zwracany przez zmienną rune na wartość typu char, która jest przypisywana zmiennej character
    print(character);
  }); // OUTPUT: A / / s / t / r / i / n / g -> in which '/' means new line



  //? runes more than 5 digits
  // Unicode code points are usually expressed as \uXXXX, where XXXX is a 4-digit hexadecimal value. 
  // To specify more or less than 4 hex digits, place the value in curly brackets.
  //  One can use the constructor of the Runes class in the dart:core library for the same.
  Runes input = new Runes(' \u{1f605} ');
  print(new String.fromCharCodes(input)); // OUTPUT: 😅  // emoji :D

}
