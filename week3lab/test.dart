void main() {
  // ?? null operator: returns expression on its left, except if it is null, and if so, returns the right expression
  print(0 ?? 1); // <- 0
  print(1 ?? null); // <- 1
  print(null ?? null); // <- null
  print(null ?? null ?? 2); // <- 2

  // ??= null aware assignment: assigns value to the variable on its left, only if that variable is currently null
  var value;
  print(value); // <- null
  value ??= 5;
  print(value); // <- 5
  value ??= 6;
  print(value); // <- 5, no change

  // ?. null aware access: prevents you from crashing
  var value2;
  // print(value2.toLowerCase()); // <- will crash
  // print(value2.toLowerCase().toUpperCase()); // <- will crash
  print(value2?.toUpperCase()?.toLowerCase()); // <- ouput is null

  // null safety
  int? i = null; // nullable variable (it takes null as well as integer value)
  print(i);

  int j; // non nullable
  // j = i; // only works if i is not null
  // print(j);

  print(checkValue(5));
  print(checkValue(null));

  // assertion operator: when you take a nullable variable and assign to non nullable variable
  // use the assertion operator which is !
  int? maybeValue = 42;
  int value3 = maybeValue!;

  String? input;
  String message = input ?? "Error";
  print(message);
}

int checkValue(int? someValue) {
  if (someValue == null) {
    return 0;
  }

  return someValue.abs();
}