//! Dart programming - LOOPS

void main(){
  //? for loop
  //* for loop looks like in c++

  /*
  for (initial_count_value; termination-condition; step) { 
    statements 
  }  
*/

  var num = 5;
  var factorial = 1;

  for (var i = num; i>= 1; i--){
    factorial *= i;
  }
  print(factorial);



  //? for in loop
  //* the for in loop is used to loop through object's properties

  /*
  for (variablename in object){  
    statement or block to execute  
  }
  */

  var obj = [12, 13, 14, 15, 16,17,  18];

  for(var prop in obj){
    print(prop);
  }



  //? while loop
  //* while loop looks like in C++

  /*
  while (expression) {
     Statement(s) to be executed if expression is true  
  }
  */

  var number = 5;
  var factorial2 = 1;

  while(number >= 1){
    factorial2 = factorial2 * number;
    number--;
  }
  print("The factorial is ${factorial}");



  //? do...while LOOPS
  //* do..while loop looks the same as in C++

  /*
  do {  
    Statement(s) to be executed;  
  } while (expression); 
  */

  var p = 10;
  do{
    print(p);
    p--;
  } while(p>=0);



  //? break
  p = 1;
  while(p <= 10){
    if(p % 5 == 0){
      print("The first multiple of 5  between 1 and 10 is : ${p}");
      break; // exit the loop if the first multiple is found
    }
    p++;
  }



  //? continue
  var number4 = 0;
  var count = 0;

  for(number4 = 0; number4 <= 20; number4++){
    if(number4 % 2 == 0){
      continue; // the loop exits the current iteratio
    }
    count++;
  }
  print("The count of odd values between 0 and 20 is: ${count}");



  //? labels 
  //! A label is simply an identifier followed by a colon (:) that is applied to a statement or a block of code. 
  //! A label can be used with break and continue to control the flow more precisely.
  
  outerloop: // this is the label name

  for(var i = 0; i < 5; i++){
    print("Innerloop: ${i}");
    innerloop:

    for (var j = 0; j < 5; j++){
      if (j > 3) break;

      // Quit the innermost loop
      if (i == 2) break innerloop;

      // Do the same thing
      if (i == 4) break outerloop;

      // Quit the outer loop
      print("Innerloop: ${j}");
    }
  }
}
