//! operator+_in_class_and_static_method

//? IMPORTANT NOTE
// everything in Dart is an object. This includes even the simplest data
// such as numbers or the Boolean values true and false.

import 'dart:math';

class Point {
  var x, y;
  Point(this.x, this.y);
  scale(factor) => new Point(x * factor, y * factor);
  operator +(p) => new Point(x + p.x, y + p.y); //?  declaration of operator + in class

  static distance(p1, p2){ //?  thats static method
    // The modifier static means this method is not specific to any instance. It has no access to
    // the instance variables x and y, as those are different for each instance of Point.
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
    return sqrt(dx * dx + dy * dy); // sqrt function requires dart:math library
  }
}


void main(){
  var origin = new Point(0, 0);
  var aPoint = new Point(3, 4);
  var anotherPoint = new Point(3, 4);


  //? expression with operator + ( adding 2 classes together ) // it was compiled without return line in class definition
  print((aPoint + anotherPoint).y); // OUTPUT: 8
  print((aPoint + anotherPoint).x); // OUTPUT: 6


  //? using static class method 
  print(Point.distance(anotherPoint, origin)); // OUTPUT: 5.0
}
