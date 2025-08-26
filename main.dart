import 'package:flutter/material.dart'; // this lib will get me the entire properties of the Phone material

// start the application
void main() { // main is the starting point of an App
  runApp(MyFirstFlutter()); // runApp will launch the class
}

//there are two type of Widget (Everything in Flutter is Widget), stateless(Static) and stateful(Dynamic)
class MyFirstFlutter extends StatelessWidget {
  const MyFirstFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // as per the hierarchy tree, the class should call MaterialApp
      home: MyFirstCode(), // MaterialApp myst call home in which I will design in scaffold
    );
  }
}

class MyFirstCode extends StatelessWidget {
  const MyFirstCode({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;

    return Scaffold( // Scaffold has two regions, Appbar part and body part
      appBar: AppBar(
        title: Text('H1'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      // body: Center( // body has to use the center / column to display two widget
      //   child: Text("welcome"), // 1 use child because there is only one widget to be displayed
      // ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome", style: TextStyle(fontSize: 30),),
            SizedBox(height: 10,),
            Text("To Vanier"),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {}, // anonymous function because it does not have a name
                child: Text("+")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {}, // anonymous function because it does not have a name
                child: Text("Password")),
            SizedBox(height: 10,),
            Text('$counter')
          ],
        ),
      ),
    );
  }
}

