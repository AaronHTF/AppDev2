void main() {
  // Creating a map
  Map<String, int> ageMap = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };

  // Accessing values in the Map
  var aliceAge = ageMap['Alice'];

  // Adding a new key value pair to the Map
  ageMap['David'] = 28;

  // Removing a key value pair from the Map
  ageMap.remove('Charlie');

  // Iterating over the Map
  ageMap.forEach((key, value) {
    print('$key is $value years old');
  });
}