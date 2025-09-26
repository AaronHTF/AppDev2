import 'package:flutter/material.dart';

void main() {
  runApp(LakeProject());
}

class LakeProject extends StatelessWidget {
  const LakeProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstVisit(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFirstVisit extends StatelessWidget {
  const MyFirstVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beautiful Lake"),
      ),
      body: Center(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Image(image: AssetImage("asset/cat1.jpg"), width: 200, height: 200,),
            //     Image(image: AssetImage("asset/cat2.jpg"), width: 200, height: 200,),
            //     Image(image: AssetImage("asset/cat3.jpg"), width: 200, height: 200,),
            //   ],
            // ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text("Phone", style: TextStyle(fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.thunderstorm,
                      color: Colors.yellow,
                      size: 50,
                    ),
                    Text("Thunder", style: TextStyle(fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.apple,
                      color: Colors.redAccent,
                      size: 50,
                    ),
                    Text("Apple", style: TextStyle(fontSize: 20),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
