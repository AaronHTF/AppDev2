void main() async {
  // Future method
  print('Start fetching recipes');

  // creates a new thread
  Future.delayed(Duration(seconds: 5), () {
    print('recipes fetched');
    // _ means that no data is needed from the previous lines of code
  }).then((_) {
    print('after fetching recipes');
  });

  String computation = 'a random comptutation';
  print(computation);


  // Await Async method
  print("start fetching recipes");

  await Future.delayed(Duration(seconds: 1), () {
    print('recipes feched');
  });

  print("after fetching recipes");

  String computation2 = "a random computation";
  print(computation2);
}