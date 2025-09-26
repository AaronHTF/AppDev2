import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(child: 
              Image(image: AssetImage('assets/apple.jpg')),),
            title: Text('Apple'),
            tileColor: Colors.green[300],
          ),
          Container(
            height: 50,
            color: Colors.blue[500],
            child: Center(
              child: Text('Mango'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.deepOrangeAccent[700],
            child: Center(
              child: Text('Pear'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.yellow[600],
            child: Center(
              child: Text('Melon'),
            ),
          )
        ],
      ),
    );
  }
}

