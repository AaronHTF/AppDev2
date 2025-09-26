import 'dart:async';

void main() {
  // Create a stream controller to emit values asynchronously
  final controller = StreamController<int>();

  // listen to the generated stream and print the numbers
  controller.stream.listen((value) {
    print(value);
  });

  // Start an asynchronous generator
  generateNumbers(controller);

  // Close the stream controller after 3 seconds
  Future.delayed(Duration(seconds: 11), () {
    controller.close();
  });
}

Future<void> generateNumbers(StreamController<int> controller) async {
  for (int i = 1; i <= 10; i++) {
    // Simulate an asynchronous operation (e.g. fetching data)
    await Future.delayed(Duration(seconds: 1));

    // Yield the value to the stream
    controller.sink.add(i);
  }
}