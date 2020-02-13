//! classes_constructors_this_

void main(){
  Car wagen = new Car("E1001");
  wagen.disp(); // OUTPUT: E1001 

  Auto auto = new Auto.namedConstructor("E2030");
  auto.disp(); // OUTPUT: E2030


  Wagen samochod = new Wagen("CS302"); // OUTPUT: The engine is: CS302
}


//? Class example
class Car{
  //? Constructor -> is any variable declared in a class. Fields represent data pertaining to objects.
  // SYNTAX -> className(parameter_list){ 
  // SYNTAX ->     // constructor body 
  // SYNTAX -> }

  Car(String n1){
    engine = n1;
  }
  

  // field -> is any variable declared in a class
  String engine = "null";

  // function
  void disp(){
    print(engine);
  }
}



class Auto{
  //? Named constructors ->  Dart provides named constructors to enable a class define multiple constructors
  // SYNTAX -> className.constructorName(param_list) { // constructor body }
  Auto.namedConstructor(String e1){
    engine = e1;
  }

   // field -> is any variable declared in a class
  String engine = "null";

  // function
  void disp(){
    print(engine);
  }
}



class Wagen{
  String engine;
  Wagen(String engine){
    this.engine = engine; //? 'this' keyword refers to the current instance of the class
    print("The engine is: ${engine}");
  }
}
