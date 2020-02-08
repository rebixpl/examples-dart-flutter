//! String data type properties methods interpolation 


void main(){
  String str1 = 'this is a single line string';
  String str2 = "this is a single line string";
  String str3 = '''this is a
  multi line string''';
  String str4 = """this is a multi
  line string""";

  print(str1);
  print(str2);
  print(str3);
  print(str4);



  //? String Interpolation
  //  it is the process of adding a string to another string. commonly used with operator (+)
  str1 = "Hello";
  str2 = " world!";
  String res = str1 + str2;
  print("The interpolated string: ${res}");

  // other example with numbers and "${}"
  int n = 1 + 1;
  String str5 = "The sum of 1 and 1 is ${n}.";
  print(str5);
  print(" ");
  String str6 = "The sum of 2 and 2 is ${2+2}.";
  print(str6);
  print(" ");



  //////? String Properties
  
  //? codeUnits -> Returns a list of the UTF-16 code units of a given string.
  String str7 = "Hello";
  print(str7.codeUnits); // OUTPUT: [72, 101, 108, 108, 111] 
  print(" ");


  //? isEmpty -> Returns true if this string is empty.
  String str8 = "";
  print(str8.isEmpty); // OUTPUT: True


  //? Length -> Returns the length of the string including space, tab and newline characters.
  String str9 = "Hello All!";
  print("The length of the string is: ${str9.length}"); // OUTPUT: The length of the string is: 10



  //////? Methods to Manipulate Strings
  
  //? toLowerCase() -> Converts all characters in this string to lower case.
  String str10 = "ABCDEFGHUJ";
  print(str10.toLowerCase()); // OUTPUT: abcdefghuj


  //? toUpperCase() -> Converts all characters in this string to upper case.
  String str11 = "qwertyuiop";
  print(str11.toUpperCase()); // OUTPUT: QWERTYUIOP


  //? compareTo() -> Compares this object to another.
  // Returns an integer representing the relationship between two strings.
  // 0 − when the strings are equal.
  // 1 − when the first string is greater than the second
  // -1 − when the first string is smaller than the second

  String str12 = "A";
  String str13 = "A";
  String str14 = "B";

  print("str12.compareTo(str13): ${str12.compareTo(str13)}"); // OUTPUT: 0
  print("str12.compareTo(str14): ${str12.compareTo(str14)}"); // OUTPUT: -1
  print("str14.compareTo(str13): ${str14.compareTo(str13)}"); // OUTPUT: 1


  //? replaceAll() -> Replaces all substrings that match the specified pattern with a given value.
  // SYNTAX -> replaceAll(Pattern from, String replace)
  String str15 = "Hello World";
  print("New String: ${str15.replaceAll('World','ALL')}"); // OUTPUT: Hello ALL


  //? split() -> Splits the string at matches of the specified delimiter and returns a list of substrings.
  String str16 = "Today, is, Saturday!";
  print("New String: ${str16.split(',')}"); // OUTPUT: New String: [Today,  is,  Saturday!]


  //? toString() -> Returns a string representation of this object.
  int nInt = 12;
  var res2 = nInt.toString();
  print("New String: ${res2}");
}
