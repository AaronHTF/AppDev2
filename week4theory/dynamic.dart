void main() {
  dynamic x = 'hal';
  x = 123;
  print(x);
  var a = 'hal';
  // Can't change data type because variable is not dynamic
  // a = 123;
  print(a);
}