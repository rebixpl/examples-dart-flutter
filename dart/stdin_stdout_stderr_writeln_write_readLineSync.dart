//! Reading and writing with stdin, stdout, and stderr
// To use stdin, stdout, stderr you need to import dart:io library (input-output)

import 'dart:io';

bool writeMessage = true;

void main(){
  //? stdout
  if (writeMessage){
    stdout.write(23232); // The write() and writeln() methods take an object of any type, convert it to a string, and print it. 
    stdout.writeln(""); // writeln() method also prints a newline character
    stdout.writeln("Hello, World!");
    print("Yeah"); // you can use print() to display message too
  }


  //? stderr
  if (!writeMessage){
    stderr.writeln("error: writeMessage has value of 'false'"); // Use stderr to write error messages to the console.
  }


  //? stdin
  if (writeMessage){
    stdout.writeln("Type something: ");
    String input = stdin.readLineSync(); // The readLineSync() method reads text from the standard input stream, blocking until the user types in text and presses return.
    stdout.writeln("You typed: $input"); // you can print out variable by simply putting '$' before the name of variable
  }
}
