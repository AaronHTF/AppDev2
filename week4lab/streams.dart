import 'dart:async';

void main() {
  final s = CountStreams(7);
  s.listen((data) {
    print('data from the yield: $data');
  });
}

Stream<int> CountStreams(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i; // when over the function yields a new value
    // yield will throw to listenable object
}
}