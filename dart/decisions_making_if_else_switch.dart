//! Dart - DECISIONS MAKING

void main(){
  //? if statement
  /*
  if(boolean_expression){ 
    statement(s) will execute if the boolean expression is true. 
  } 
  */

  var num = 5;
  if(num>0){
    print("number is positive (higher than zero)");
  }



  //? if...else statement
  /*
  if(boolean_expression){ 
    statement(s) will execute if the Boolean expression is true. 
  } else { 
    statement(s) will execute if the Boolean expression is false. 
  } 
  */

  num = 12;
  if(num % 2 == 0){
    print("Even");
  } else {
    print("Odd");
  }



  //? else..if ladder statement
  /*
  if (boolean_expression1) { 
   statements if the expression1 evaluates to true 
  } 
  else if (boolean_expression2) { 
   statements if the expression2 evaluates to true 
  } 
  else { 
   statements if both expression1 and expression2 result to false 
  } 
*/

  num = 2;
  if(num > 0){
    print("${num} is positive");
  }
  else if(num < 0) {
    print("${num} is negative");
  } else {
    print("${num} is neither positive nor negative");
  }



  //? switch...case statement
  /*
  switch(variable_expression) { 
   case constant_expr1: { 
      statements; 
   } 
   break; 
  
   case constant_expr2: { 
      statements; 
   } 
   break; 
      
   default: { 
      statements;  
   }
   break; 
  } 
  */

  var grade = "B";
    switch(grade){
      case "A": {print("Excellent");}
      break;

      case "B": {print("Good");}
      break;

      case "C": {print("Fair");}
      break;

      case "D": {print("Poor");}
      break;

      default: {print("Invalid choice!");}
      break;
    }
}
