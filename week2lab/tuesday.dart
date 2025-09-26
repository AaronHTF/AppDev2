import 'dart:math';

void main() {
  Student student1 = new Student("Aaron", 20, 2314854);

  // student1.showStdInfo();

  Child c = new Child();

  Bike b = new Bike();
  b.display();

  Square square = new Square();
  square.side = 4;
  square.printArea();

  Circle circle = new Circle();
  circle.radius = 5;
  circle.printArea();

  const a1 = 3;
  const b1 = 2;
  const op = Operation.minus;
  switch(op) {
    case Operation.plus:
      print("$a1 + $b1 = ${a1 + b1}");
      break;
    case Operation.minus:
      print("$a1 + $b1 = ${a1 + b1}");
      break;
    case Operation.multiply:
      print("$a1 * $b1 = ${a1 * b1}");
      break;
    case Operation.divide:
      print("$a1 / $b1 = ${a1 / b1}");
      break;
  }

  double tempFarenheit = 90.25;
  double tempCelsius = (tempFarenheit - 32) / 1.8;
  print("${tempFarenheit.toStringAsFixed(1)}F = ${tempCelsius.toStringAsFixed(1)}C");

  var add = (int x, int y) => x + y;
  print(add(10,20));

  test_param(123);
  print(pow(2, 2)); // x = 2, y = 2
  print(pow(2, 4)); // x = 2, y = 4
  print(pow(3)); // x = 3, y = 2 because of default optional positional parameters

  test_param2(123);
  test_param2(123, s1:"Hello");
  test_param2(123, s2:"Hello", s1:"world");

}

// Optional Positional Parameters
test_param(n1, [s1 = "Nothing"]) {
  print(n1);
  print(s1);
}

// Optional Positional Default Parameters;
int pow(int x, [int y = 2]) {
  int r = 1;
  for (int i = 0; i < y; i++) {
    r *=x;
  }
  return r;
}

// Optional Named Parameter
test_param2(n1, {s1,s2}) {
  print(n1);
  print(s1);
}

class Student {
// Underscore for private access modifier
  var _stdName;
  var _stdAge;
  var _stdRollNo;

  Student(var stdName, var stdAge, var stdRollNo) {
    this.stdName = stdName;
    this.stdAge = stdAge;
    this.stdRollNo = stdRollNo;
  }

  showStdInfo() {
    print("Student name is : ${stdName}");
    print("Student age is : ${stdAge}");
    print("Student roll number is : ${stdRollNo}");
  }

  get stdRollNo => _stdRollNo;

  set stdRollNo(value) {
    _stdRollNo = value;
  }

  get stdAge => _stdAge;

  set stdAge(value) {
    _stdAge = value;
  }

  get stdName => _stdName;

  set stdName(value) {
    _stdName = value;
  }
}

class Parent {
  Parent() {
    print("This is the super class constructor");
  }
}

class Child extends Parent {
  Child():super() {
    print("This is the sub class constructor");
  }
}

class Car {
  var speed = 100;
}

class Bike extends Car {
  var speed = 110;

  void display() {
    print("The speed of car: ${super.speed}");
  }
}

abstract class Person {
  void displayInfo();
}

class Boy extends Person {
  void displayInfo() {
    print("My name is Aaron");
  }
}

class Girl extends Person {
  void displayInfo() {
    print("My name is Violet");
  }
}

abstract class Shape {
  void printArea();
}

class Square extends Shape {
  var side;

  void printArea() {
    print(side * side);
  }
}

class Circle extends Shape {
  var radius;

  void printArea() {
    print(2 * pi * radius);
  }
}

enum Operation {
  plus,
  minus,
  multiply,
  divide,
}