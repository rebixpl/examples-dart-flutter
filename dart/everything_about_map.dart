//! Map in dart
// The map object is a simple key/value pair. It's a dynamic collection.

void main(){
  //? Declare a Mapusing Map literals
  // SYNTAX -> var mapex = {key1:value1, key2:value2}
  var details = {'nickname':'andrzej007', 'password':'zaq1@WSX'};
  print(details);

  // adding values to map literals at runtime
  details['id'] = '007#4444';
  print(details);


  
  //? Declare a Map using a Map()
  // SYNTAX -> var identifier = new Map()
  // SYNTAX -> identifier[key] = value
  var detailsDB = new Map();
  detailsDB['nickname'] = 'admin';
  detailsDB['password'] = '1234';
  print(detailsDB);



  //////? Map  Properties
  //? Keys -> returns an iterable object representing keys
  print(details.keys); // OUTPUT: {nickname, password, id}


  //? Values -> returns an iterable object representing values
  print(details.values); // OUTPUT: (andrzej007, zaq1@WSX, 007#4444)


  //? Length -> returns the size of the map
  print(details.length); // OUTPUT: 3


  //? isEmpty -> returns true if the Map is empty
  print(details.isEmpty); // OUTPUT:false
  var xTest = new Map();
  print(xTest.isEmpty); // OUTPUT: true
  print(" ");


  //////? Map Functions
  //? remove() -> removes key and its value from the map
  Map m1 = {'a':1, 'b':2};
  dynamic res = m1.remove('a'); // also returns the value associated with the key so 'res' has value '1'
  print(m1); // OUTPUT: {b:2}


  //? addAll() -> Map.addAll() function adds all key-value pairs of other to this map.
  var m2 = new Map();
  m2.addAll({'depth':2.442, 'fov':90});
  print(m2); // OUTPUT: {depth: 2.442, fov: 90}


  //? clear() -> Removes all pairs from the map.
  print(m2); // OUTPUT: {depth: 2.442, fov: 90}
  m2.clear();
  print(m2); // OUTPUT: {}


  //? forEach() -> Applies the specified function on every Map entry. In other words, forEach enables iterating through the Map’s entries.
  // SYNTAX -> Map.forEach(void f(K key, V value));
  var database = new Map();
  database['nickname'] = 'admin';
  database['password'] = '1234';
  database['id'] = '73hd39849889ys78g7f8g73874743';
  database.forEach((a,b) =>print("${a} : ${b}")); // OUTPUT: nickname : admin, password : 1234, id : 73hd39849889ys78g7f8g73874743
}
