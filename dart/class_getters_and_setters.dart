//! class_getters_and_setters

void main(){
  Student s1 = new Student();
  s1.stud_name = "Mark";
  s1.stud_age = -1;
  print(s1.stud_name); // OUTPUT: Mark
  print(s1.stud_age); // OUTPUT: Age should be greater than 5!
}


//? GETTERS AND SETTERS
//? Getters and Setters, also called as accessors and mutators, 
//? allow the program to initialize and retrieve the values of class fields respectively(kolejno). 
// SYNTAX getter -> returnType get identifier {}
// SYNTAX setter -> set identifier {}
class Student{
  String name;
  int age;

  String get stud_name{
    return name;
  }

  void set stud_name(String name){
    this.name = name;
  }

  void set stud_age(int age){
    if (age <= 0){
      print("Age should be greater than 5!");
    } else {
      this.age = age;
    }
  }

  int get stud_age{
    return age;
  }
}
