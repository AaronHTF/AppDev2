void main() {
  // named argument
  test_param(123);
  test_param(123, s1: "Hello");
  test_param(123, s2: "Hello", s1: "world");

  // anonymous function
  var words = ['sky', 'cloud', 'forest', 'welcome'];
  words.forEach((String word) {
    print('$word has ${word.length} characters');
  });

  // function as a parameter
  int r1 = apply(3, inc);
  int r2 = apply(2, dec);
  print(r1);
  print(r2);

  // Named constructor
  Student st1 = new Student();
  Student st2 = new Student.namedConst("STOO2");

  // Inheritance of Constructor with named parameters
  var macbook = Macbook(name: "Macbook pro", color: "Silver");
}

test_param(n1, {s1, s2}) {
  print(n1);
  print(s1);
}

// function as a parameter
int inc(int x) => ++x;
int dec(int x) => --x;
int apply(int x, Function f) {
  return f(x);
}

// Named Constructors -> used mostly to define multiple constructors
class Student {
  Student() {
    print("Inside Student Constructor");
  }

  // Can be Student.anything
  Student.namedConst(String stCode) {
    print(stCode);
  }
}

// Inheritance of Constructor with named parameters
class Laptop {
  Laptop({var name, var color}) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class Macbook extends Laptop {
  Macbook({var name, var color}) : super(name: name, color: color) {
    print("Macbook constructor");
  }
}