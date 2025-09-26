import 'dart:io';
import 'dart:math';

void main() {
  print('Enter the radius of the circle: ');
  String? input = stdin.readLineSync();
  double radius = double.parse(input!);

  var calcCircleArea = (radius) {
    return pi * radius * radius;
  };

  var calcCircleCircumference = (radius) {
    return 2 * pi * radius;
  };

  double area = calcCircleArea(radius);
  double circumference = calcCircleCircumference(radius);

  print('The area of the circle is ${area}, the circumference of the circle is ${circumference}.');
}