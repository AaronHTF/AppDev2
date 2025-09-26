void main() async {
  print('Start');
  try {
    final user = await fetch();
    print('received user: $user');
  } catch (error) {
    print('Error: $error');
  }
  print('end');
}

Future<String> fetch() async {
  await Future.delayed(Duration(seconds: 4));
  return 'J Doe';
}