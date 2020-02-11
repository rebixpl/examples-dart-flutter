import 'dart:core';
import 'dart:mirrors';
import 'code3.dart';

//! Symbols in dart
//? Symbols in Dart are opaque, dynamic string name used in reflecting out 
//? metadata from a library. Simply put, symbols are a way to store the relationship
//? between a human readable string and a string that is optimized to be used by computers.

// SYNTAX -> Symbol obj = new Symbol('name');
// expects a name of class or function or library to reflect



/* //! INSIDE code3.dart 
library foo_lib;
////? library name can be a symbol

class Foo{
  ////? class name can be a symbol

  m1(){
    ////? method name can be a symbol
    print("Inside m1");
  }
  
   m2(){
    print("Inside m2");
  }

   m3(){
    print("Inside m3");
  }
}
*/


void main(){
  Symbol lib = new Symbol("foo_lib");
  // library name stored as a symbol

  Symbol clsToSearch = new Symbol("Foo");
  // class name stored as a symbol

  if(checkIf_classAvailableInlibrary(lib, clsToSearch))
  // searches Foo class in foo_lib library
  print("class found...");



  //? Convert Symbol to String
  String name_of_the_lib = MirrorSystem.getName(lib);
  print(name_of_the_lib); // OUTPUT: foo_lib
}

bool checkIf_classAvailableInlibrary(Symbol libraryName, Symbol className){
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);

  if (libMirror != null){
    print("Found library");
    print("checking...class detail...");
    print("No of classes found is: ${libMirror.declarations.length}");
    libMirror.declarations.forEach((s,d) => print(s));

    if (libMirror.declarations.containsKey(className)) return true;
    return false;
  }
}
