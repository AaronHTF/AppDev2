import 'dart:collection';

void main() {
  HashMap map1 = new HashMap<int, String>();
  LinkedHashMap map2 = new LinkedHashMap<int, String>();
  SplayTreeMap map3 = new SplayTreeMap<int, String>();

  map1[1] = 'A';

  map1.putIfAbsent(1, () => 'A');

  map1.update(1, (e) => 'A');
  map1.update(1, (e) => '${e}A');

  map1.update(1, (e) => '${e}A', ifAbsent: () => 'A');

  map1[1];

  map1.length;

  map1.remove(2);

  map1.removeWhere((key, value) => key % 2 == 0 || value == 'c');

  map1.clear();

  map1.forEach((key, value) {
    print('key: $key, value: $value');
  });

  var mappedHashmap = map1.map((key, value) {
    return new MapEntry(key, '$value mapped');
  });
  print('mappedHashmap: $mappedHashmap');





  var words = {
    1: 'sky',
    2: 'fly',
    3: 'ribbon',
    4: 'falcon',
    5: 'rock',
    6: 'ocean',
    7: 'cloud'
  };

  words.remove(1);
  print(words);

  words.removeWhere((key, value) => value.startsWith('f'));
  print(words);

  words.clear();
  print(words);




  var letters = ['I', 'II', 'V', 'X', 'L'];
  var numbers = [1, 2, 5, 10, 50];

  var data = Map<String, int>.fromIterables(letters, numbers);
  print(data);




  var words2 = ['sky', 'cloud', 'sod', 'worm', 'put', 'water', 'cup'];

  var i = 0;
  var data2 = {
    for (var e in words2)
      if (e.length == 3) i++: e
  };

  print(data);




  var f1 = {1: 'Apple', 2: 'Orange'};
  var f2 = {3: 'Banana'};
  var f3 = {4: 'Mango'};

  var fruit = {}..addAll(f1)..addAll(f2)..addAll(f3);
  print(fruit);

  var fruit2 = Map.from(f1)..addAll(f2)..addAll(f3);
  print(fruit2);

  var fruit3 = {...f1, ...f2, ...f3};
  print(fruit3);




  var newFruit = {1: 'Apple', 2: 'Banana', 3: 'Cherry', 4: 'Orange'};

  newFruit.forEach((key, value) {
    print('{key: $key, value: $value}');
  });


}