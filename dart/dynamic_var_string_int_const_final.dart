void main(){
  String name = 'Smith';
  int num = 10;
  
  print(name);
  
  ////// All uninitialized variables have an initial value of null.
  int num2;
  print(num2); // output: null
  
  
  
  ////// dynamic AND var
  /* 'dynamic' is a type underlying all Dart objects. You shouldn't need to explicitly use it in most cases.
  
    'var' is a keyword, meaning "I don't care to notate what the type is here." Dart will replace the var keyword with the                  initializer type, or leaving it dynamic by default if there is        no initializer.
  */
  dynamic x = 'hal';
  x = 123; // you can change value of dynamic variable to other type
  print(x);
  
  var a = 'hal';
  // a = 123; // ERROR: you cannot change value of dynamic variable to other type
  print(a);
  
  
  
  ////// final AND const
  // The final and const keyword are used to declare constants.
  /* "final" means single-assignment: a final variable or field must have an initializer. Once assigned a value, a final                   variable's value cannot be changed. */
  
  /*  "const" objects have a couple of interesting properties and restrictions:

      They must be created from data that can be calculated at compile time. A const object does not have access to anything       you would need to calculate at runtime. 1 + 2 is a valid const        expression, but new DateTime.now() is not. */
  
  final pi = 3.14;
  final area1 = pi * 12 * 12;
  print(area1);
  
  const newPi = 3.14;
  const area = newPi * 12 * 12;
  print(area);
}



