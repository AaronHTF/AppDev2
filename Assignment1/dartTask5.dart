void main() {
  List<int> nums = [2, 5, 10, 6, 25, 21, 14];

  // add an element to a list
  nums.add(17);

  // insert an element at a specific index in the list
  nums.insert(3, 23);

  // remove an element at a specific index from a list
  nums.removeAt(2);

  // remove the last element from a list
  nums.removeLast();

  // find the length of the list
  print(nums.length);

  // find the first element of the list
  print(nums.first);

  // find the last element of the list
  print(nums.last);

  // find if the list is empty
  nums.isEmpty;

  // find if the list is not empty
  nums.isNotEmpty;

  // reverse the order of the list
  print(nums.reversed);

  // check if the list only has one element
  print(nums.single);


  List<String> students = ['Alexandra', 'Dwayne', 'Chantal', 'Kimberley' 'Walter', 'Susie'];

  // add an element to a list
  students.add('Lucie');

  // insert an element at a specific index in the list
  students.insert(3, 'Malcolm');

  // remove an element at a specific index from a list
  students.removeAt(2);

  // remove the last element from a list
  students.removeLast();

  // find the length of the list
  print(students.length);

  // find the first element of the list
  print(students.first);

  // find the last element of the list
  print(students.last);

  // find if the list is empty
  students.isEmpty;

  // find if the list is not empty
  students.isNotEmpty;

  // reverse the order of the list
  print(students.reversed);

  // check if the list only has one element
  print(students.single);
}