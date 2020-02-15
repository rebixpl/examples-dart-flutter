//! Objects

void main(){
  //? Creating and using an ubject
  Student s1 = new Student();
  s1.test_method();
  s1.test_method1();


  //? The Cascade operator (..)
  // The cascade operator can be used as a shorthand in cases where there is a sequence of invocations.
  new Student()
  ..test_method() // OUTPUT:  This is a test method
  ..test_method1(); // OUTPUT:  This is a test method1


  //? toString() method
  // This function returns a string representation of an object.
  int n =12;
  print(n.toString()); // OUTPUT: 12
}

class Student{
  void test_method(){
    print("This is a test method");
  }

  void test_method1(){
    print("This is a test method1");
  }
}
