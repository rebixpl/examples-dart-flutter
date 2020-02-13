//! interfaces
//? Interface defines the syntax that any entity must adhere to. Class declarations are themselves interfaces in Dart.
//? Classes should use the 'implements' keyword to be able to use an interface.
// SYNTAX -> class identifier implements interface_name

//?  If you want to create a class A that supports class B’s API without inheriting B’s implementation, 
//? class A should implement the B interface.


void main(){
  //? Printer example
  ConsolePrinter cp = new ConsolePrinter();
  cp.print_data(); // OUTPUT: __printing_to_console...__
  print("");



  //? Calculator example
  Calculator c = new Calculator();
  print("The gross total: ${c.retTot()}"); // OUTPUT:The gross total: 1000
  print("Discount: ${c.retDis()}"); // OUTPUT: Discount: 50
}

//? Printer example
class Printer{ // this is our interface class
  void print_data(){
    print("__printing_data...__");
  }
}

class ConsolePrinter implements Printer{ // this class implements Printer as a interface API
  void print_data(){
    print("__printing_to_console...__");
  }
}



//? Calculator example
class calculateTotal{
  int retTot() {}
}

class calculateDiscount{
  int retDis() {}
}

class Calculator implements calculateTotal, calculateDiscount {
  int retTot(){
    return 1000;
  }

  int retDis(){
    return 50;
  }
}
