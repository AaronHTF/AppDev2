void main() {
  List<int> list = [10, 20, 30, 40, 50];
  list.forEach((n) => print(n));
  print(list);

  List<int> list2 = [10, 20, 30, 40, 50];
  var doubledList = list.map((n) => n * 2);
  print(doubledList);

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> even = numbers.where((number) => number.isEven).toList();
  print(even);

  bool sad = false;
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print(cart);

  List list10 = ['Mango', 'Apple'];
  List list11 = ['Orange', 'Avocado', 'Grape'];
  List list12 = ['Lemon'];

  var combinedList = [...list10, ...list11, ...list12];

  print(combinedList);

  List newList = ['One', ...list10];

  print(newList);
}