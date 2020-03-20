// MAP USAGE ( its like dictionary in other languages)
// Map<keyDatatype, valueDatatype> nameOfMap = {
//   Key : Value,
// };

Map<String, int> phoneBook = {
  'Dis':669996666,
  'Ksiadz':222666869,
  'Roksy':2323232323,
};

main() {
  print(phoneBook['Dis']); //OUTPUT: 669996666
  
  phoneBook["Adam"] = 888666777;
  
  print(phoneBook["Adam"]); // OUTPUT: 888666777
  
  print(phoneBook.length); // OUTPUT: 4 // so I have 4 entries in my Map
  
  print(phoneBook.keys); // OUTPUT: (Dis, Ksiadz, Roksy, Adam)
    
  print(phoneBook.values); // OUTPUT:(669996666, 222666869, 2323232323, 888666777)
}
