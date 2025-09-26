import 'dart:io';

void main() {
  print('Enter a first number: ');
  String? input1 = stdin.readLineSync();
  print('What operation do you want to perform? (+, -, *, /, %)');
  String? input2 = stdin.readLineSync();
  print('Enter a second number: ');
  String? input3 = stdin.readLineSync();

  double num1 = double.parse(input1!);
  double num2 = double.parse(input3!);

  var add = (double a, double b) => a + b;
  var substract = (double a, double b) => a - b;
  var multiply = (double a, double b) => a * b;
  var divide = (double a, double b) => a / b;
  var mod = (double a, double b) => a % b;

  double result = 0;

  switch(input2) {
    case '+':
      result = add(num1, num2);
      break;
    case '-':
      result = substract(num1, num2);
      break;
    case '*':
      result = multiply(num1, num2);
      break;
    case '/':
      result = divide(num1, num2);
      break;
    case '%':
      result = mod(num1, num2);
      break;
  }

  print('The result of ${num1} ${input2} ${num2} is ${result}.');
}