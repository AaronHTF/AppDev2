
void main() {
  print('start');
  fetchData().then((user) {
    print('received user :$user');
  }).catchError((error) {
    print('error catched user: $error');
  });
  print('end of the call');
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  return 'J Doe';
}