class TestClass {
  void display() {
    print("display");
  }
}

class PrintNumber {
  void display() {
    int n = 7;
    print(n);
  }
}

void main() {
  // Creating object of class TestClass 
  TestClass myClass = new TestClass();
  myClass.display();
  
  // Creating object of class PrintNumber
  PrintNumber myNumber = new PrintNumber();
  myNumber.display();
}

// this is single line comment

/* this is
 * multi line
 * comment */
