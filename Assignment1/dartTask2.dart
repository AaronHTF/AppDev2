void main() {
  SuperBank superBank1 = new SuperBank();
  SuperBank superBank2 = new SuperBank.namedConst('John');

  RBC rbc1 = new RBC();
  RBC rbc2 = new RBC.namedConst('John');
}

class SuperBank {
  SuperBank() {
    print('Inside SuperBank default constructor');
  }

  SuperBank.namedConst(String name) {
    print('Inside the Superbank parametrized, named constructor for ${name}');
  }
}

class RBC extends SuperBank {
  RBC() {
    print('Inside RBC default constructor');
  }

  RBC.namedConst(String name) : super.namedConst(name) {
    print('Inside the RBC parametrized, named constructor for ${name}');
  }
}