//! class_inheritance_method_overriding_static_super

void main(){
  var obj = new Circle();
  // calling inherited method
  obj.cal_area(); // OUTPUT: calling calc area defined in the Shape class


  var obj2 = new Leaf();
  obj2.str = "hello world";
  print(obj2.str); // OUTPUT: hello world


  Son c = new Son();
  c.m1(12); // OUTPUT: the value of b is: 12


  StaticMem.num = 12;
  // Static members are referenced by the class name.
  StaticMem.disp(); // OUTPUT: The value of num is 12


  FosterChild fc = new FosterChild();
  fc.m1(12); 
  // OUTPUT: value of b 12
  // OUTPUT: value of a 13
  // OUTPUT: message variable from the parent class
}



//? CLASS INHERITANCE
// This is the ability of a program to create new classes from an existing class. 
// The class that is extended to create newer classes is called the parent class/super class. 
// The newly created classes are called the child/sub classes.
// Child classes inherit all properties and methods except constructors from the parent class.
// DART DOESN`T SUPPORT MULTIPLE INHERITANCE

//*  SYNTAX -> class child_class_name extends parent_class_name
class Shape{
  void cal_area() {
    print("calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {} // this is example of class inheritance


//? MULTI LEVEL INHERITANCE -> A class can inherit from another child class.
class Root{
  String str;
}

class Child extends Root{}
class Leaf extends Child {}



//? CLASS INHERITANCE AND METHOD OVERRIDING
//* Method Overriding is a mechanism by which the child class redefines a method in its parent class.
class Parent{
  void m1(int a) { print("value of a ${a}"); }
}

class Son extends Parent{
  @override // it overrides m1 parent method!
  void m1(int b) {
    print("the value of b is: ${b}");
  }
}



//? THE STATIC KEYWORD
//  A static variable retains its values till the program finishes execution. 
// Static members are referenced by the class name.
class StaticMem{
  static int num;
  static disp(){
    print("The value of num is ${StaticMem.num}");
  }
}



//? THE super KEYWORD
//* The 'super' keyword is used to refer to the immediate parent of a class. 
class FosterParent{
  String msg = "message variable from the parent class";
  void m1(int a) { print("value of a ${a}"); }
}

class FosterChild extends FosterParent{
  @override
  void m1(int b){
    print("value of b ${b}");
    super.m1(13); // usage of super keyword
    print("${super.msg}");
  }
}
