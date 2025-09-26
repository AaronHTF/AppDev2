import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  // print('Enter your favorite car :');
  //
  // // prompt for user input
  // var car = stdin.readLineSync();
  //
  // print('The car is ${car}');
  // print('End of main');



  // File file1 = new File("C:\\Users\\ajhot\\Documents\\names.txt");
  // Future<String> fs = file1.readAsString();
  //
  // // returns a future object, it is an async method
  // fs.then((data)=>print(data));
  //
  // // once file is read, call back method is invoked
  // print('End of Main');



  final maximum = await Future.wait({
    getRandomValue(),
    getRandomValue(),
    getRandomValue(),
    getRandomValue(),
    getRandomValue(),
    getRandomValue()
  }).then((List<int> results) => findMaxVal(results));

  print('Maximum value is : $maximum');
}

Future<int> getRandomValue() async {
  await Future.delayed(Duration(seconds: 2));
  var random = new Random();
  return random.nextInt(500);
}

int findMaxVal(List<int> lst) {
  lst.forEach((e) => print(e));

  return lst.reduce(max);
}