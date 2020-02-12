//! Functions_optional_parameters_recursive_functions_lambda


//? Defining a Function
test(){ // you can write what value does function return (like int test(), or void test()), but you dont have to (simply write test())
  // function definition
  print("function test() called!"); 
}


//? Returning functions
// SYNTAX -> return_type function_name(){ //statemets return value;}
String testStr(){
  return "hello world!";
}


//? Parameterized Function
// SYNTAX -> function_name(data_type param_1, data_type param2, [...]) { //statements }
testParam(int number, String text){
  print("number: ${number}, text: ${text}");
}



/////////////////////////?       Optional Parameters
// Optional parameters can be used when arguments need not be compulsorily passed for a function’s execution.
// If an optional parameter is not passed a value, it is set to NULL.
// SYNTAX -> void function_name(param1, [optional_param_1, optionala_param_2]) {}
testOptionalParam(n1, [n2]){
  print(n1);
  print(n2);
}


//? Optional Named Parameter
// Syntax - Declaring the function -> void function_name(a, {optional_param1, optional_param2}) {}
// Syntax - Calling the function -> function_name(optional_param:value,...);
testParamOptionalNamedParameter(n1, {a1, a2}){
  print('${n1}, ${a1}');
}


//? Optional Parameters with Default Values
// SYNTAX -> function_name(param1, {param2= default_value}) { //xxxx }
void testParamDefault(a1, {s1:12}) {
  print('${a1}, ${s1}');
}



//////////////      Recursive Dart Functions
// recrusive function is a function that calls itself until it arrives a result
factorial(number){
  if (number <= 0){
    // termination case
    return 1;
  } else {
    return (number * factorial(number - 1));
    // function invokes itself
  }
}



////////////        Lambda Functions
// SYNTAX -> [return_type] function_name(parameters) => expression;
printMsg() =>
print("hello");

int testReturnInt() => 123;


void main(){
  //? Calling a function
  test(); // OUTPUT: function test() called!
  print(testStr()); // OUTPUT: hello world!
  testParam(4, "witaj kurwo"); // OUTPUT: number: 4, text: witaj kurwo
  testOptionalParam(123); // OUTPUT: 123, null

  print(" ");

  testParamOptionalNamedParameter(123, a1:'hello'); // OUTPUT: 123, hello
  testParamOptionalNamedParameter(123, a2:'hello', a1:'world'); // OUTPUT: 123, world

  testParamDefault(123); // OUTPUT: 123, 12 

  print(factorial(6)); // OUTPUT: 720
  print(" ");

  printMsg(); // OUTPUT: hello
  print(testReturnInt()); // OUTPUT: 123
}
