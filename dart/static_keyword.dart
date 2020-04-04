void main(){
  Square mySquare = Square();
  mySquare.colour = 'Red';
  
  Square yourSquare = Square();
  yourSquare.colour = 'Blue';
  
  print(Square().numberOfSides); // Notice that to get access to numberofSides we need to create a whole new square class which is waste of computer power, because square obviously has got 4 sides. At least in our universe.
  
  print(Icosagon.numberOfSides); // Notice we are not using '()' curly brackets after the Icosagon class name, so we're not creating a new class object, we are instead simply refering to our STATIC integer called numberOfSides, which is now class-wide object
  
  Circle.workOurCircumference(radius: 15.6);
}

class Square{
  int numberOfSides = 4;
  String colour;
}

class Icosagon{
  static int numberOfSides = 20; // it's now a class wide variable and we don't need an object to access it
  
}

class Circle{
  // const double pi = 3.1415926; // ERROR: you can't create simple const in class, it must be static (why even create it evry time anew, when we can create it once while it's static and use it in multiple objects of this class)
  static const double pi = 3.1415926;
  
  // We can create as well static methods (fucntions) which are far more efficient then each time creatin a new class object to use desired method once
  static void workOurCircumference({double radius}){
    double circumference = 2*pi*radius;
    print(circumference);
  }
}
