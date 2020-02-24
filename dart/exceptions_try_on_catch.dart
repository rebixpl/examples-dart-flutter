//! exceptions_try_on_catch

//? An exception (or exceptional event) is a problem that arises during the execution of a program.
//? Every exception in Dart is a subtype of the pre-defined class Exception

//? Built-in Dart exceptions include −
//* DeferredLoadException -> Thrown when a deferred library fails to load.

//* FormatException -> Exception thrown when a string or some other data does not have an expected format and cannot be parsed or processed.

//* IntegerDivisionByZeroException -> Thrown when a number is divided by zero.

//* IOException -> Base class for all Inupt-Output related exceptions.

//* IsolateSpawnException ->Thrown when an isolate cannot be created.

//* Timeout -> Thrown when a scheduled timeout happens while waiting for an async result.



void main(){
  //////////////////////////? try / on / catch blocks
  /* try{
    //code that may throw exception
  }
  on Exception1{
    //code for handling exception
  }
  catch Exception2{
    //code for handling exception
  }
  finally{
    //code that should always execute; irrespective of the exception
  }
  */

  //? Using the ON Block and finally
  int x = 12;
  int y = 0;
  int res;

  try{
    res = x ~/ y;
  }
  on IntegerDivisionByZeroException{
    print('Cannot divide by zero!'); // OUTPUT: Cannot divide by zero!
  }
  finally{
    print('Finally block executed!'); // OUTPUT: Finally block executed!
  }


  //? Using the catch block
  int x2 = 12; 
  int y2 = 0; 
  int res2;

  try{
    res = x ~/ y;
  }
  catch(e){
    print(e); // OUTPUT: IntegerDivisionByZeroException
  }


  //? Example: on…catch
  int x3 = 12;
  int y3 = 0;
  int res3;

  try{
    res3 = x3 ~/ y3;
  }
  on IntegerDivisionByZeroException catch(e){
    print(e); // OUTPUT: IntegerDivisionByZeroException
  }


    //////////////////////////? Throwing an Exception
    //* throw new Exception_name()
    try{
      test_age(-2);
    }
    catch(e){
      print('Age cannot be negative!'); // Output: Age cannot be negative!
    }



    //////////////////////////?  Custom Exceptions
    // SYNTAX
    // class Custom_exception_name implements Exception{
    //   // can contain constructors, variables and methods
   // }
   print("");

   try{
     withdraw_amt(-1);
   }
   catch(e){
     print(e.errMsg()); // OUTPUT: Amount should be greater than zero!
   }
   finally{
     print("Ending requested operation..."); // OUTPUT: Ending requested operation...
   }
}

class AmtException implements Exception{
  String errMsg() => 'Amount should be greater than zero!';
}

void withdraw_amt(int amt){
  if (amt <= 0){
    throw new AmtException();
  }
}

void test_age(int age){
  if(age <0){
    throw new FormatException();
  }
}
