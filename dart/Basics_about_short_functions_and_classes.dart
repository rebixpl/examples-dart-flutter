//! Basics about Short functions, classes

// definition of short function
twice(x) => x * 2; 


// creating a class 
class Point{
  var x, y;
  Point(a,b){x=a; y=b;} 
  // the process of defining variables in the class constructor is very common, so dart have its own synaptic for this case;
} 


// other way of defining class variables from the constructor
class Score{
  var x, y;
  // the process of defining variables in the class constructor is very common, so dart have its own synaptic for this case
  Score(this.x, this.y);
  scale(factor) => new Score(x * factor, y * factor);
}  

int main(){
  print(twice(2)); // OUTPUT: 4
  print(" ");


  // creating a definition of Point() class
  var origin = new Point(0,0);
  var aPoint = new Point(3,4);
  var anotherPoint = new Point(3,4);


  // getting a access to the class variables 
  print(origin.x); // OUTPUT: 0
  print(origin.y); // OUTPUT: 0
  print(aPoint.x); // OUTPUT: 3
  print(aPoint.y); // OUTPUT: 4
  print(" ");
  
  
   // testing scale function in Score() class
   var nextPoint = new Score(4, 5);
   print(nextPoint.scale(3).x); // OUTPUT: 12
   print(nextPoint.scale(3).y); // OUTPUT: 15
} 
