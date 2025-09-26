Future<String> fetchUserData(String userId) async {
  print('fetch the user data for: $userId');
  // simulate the real network to connect the server (which might be time consuming operation
  await Future.delayed(Duration(seconds: 2));
  // return the processed string based on the input userId
  return 'user data for $userId successfully retrieved';
}

void main() {
  // this is another example of asynchronous
  String userId = 'admin';
  // call the async function and handle its result using . then()
  // otherwise then () can be called call back function
  fetchUserData(userId). then((data) {
    print('Processing the data: $data');
    // you can do multiple operations
    return 'data processed and ready to display';
  }). then((processedResult) {
    print('processedResult: $processedResult');
  }).catchError((error) {
    print('An error is there: $error');
  });
}