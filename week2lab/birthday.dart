import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayApp());
}

class BirthdayApp extends StatelessWidget {
  const BirthdayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BD CARD"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("To my Friend", style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            Image(image: AssetImage("asset/cat.jpg"), width: 400, height: 400,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Have a party", style: TextStyle(fontSize: 20)))
                  );
                }, child: Text("Click Me", style: TextStyle(fontSize: 20),)),
                SizedBox(width: 20),
                Text("Thanks for being my friend", style: TextStyle(fontSize: 20),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

