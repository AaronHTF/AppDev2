import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task1App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task1App extends StatelessWidget {
  const Task1App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Application', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bret', style: TextStyle(fontSize: 20, color: Colors.grey,)),
                Text('Sincere@april.biz', style: TextStyle(fontSize: 20, color: Colors.grey,)),
                Text('1-770-736-8031 x56442', style: TextStyle(fontSize: 20, color: Colors.grey,)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('address', style: TextStyle(fontSize: 20, color: Colors.red),),
                Text('Kulas Light Apt. 556, Gwenborough 92998-3874', style: TextStyle(fontSize: 15,)),
                Divider(
                  color: Colors.black,
                ),
                Text('company', style: TextStyle(fontSize: 20, color: Colors.red),),
                Text('Romaguera-Crona, Multi-layered client-server neural-net, harness real-time e-markets', style: TextStyle(fontSize: 15),),
                Divider(
                  color: Colors.black,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/picture.png'), width: 200, height: 200,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

