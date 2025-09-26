import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPicture(),
    );
  }
}

class MyPicture extends StatelessWidget {
  const MyPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is my first Picture"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Tuesday", style: TextStyle(fontSize: 35),),
            SizedBox(height: 10,),
            Text("Wednesday", style: TextStyle(fontSize: 35),),
            SizedBox(height: 10,),
            // call the inbuild icon
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 30,
            ),
            SizedBox(height: 10,),
            // call the inbuild icon
            Icon(
              Icons.audiotrack,
              color: Colors.redAccent,
              size: 30,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("asset/cat.jpg", ), width: 200, height: 200,),
                SizedBox(width: 20,),
                Image(image: AssetImage("asset/cat.jpg", ), width: 200, height: 200,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("asset/cat.jpg", ), width: 200, height: 200,),
                SizedBox(width: 20,),
                Image(image: AssetImage("asset/cat.jpg", ), width: 200, height: 200,),
              ],
            ),
            SizedBox(height: 20,),
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.green,
            //   alignment: Alignment.center,
            //   child: Text("This is a container", style: TextStyle(fontSize: 20),),
            // ),
            InkWell(onTap: () {
              print("You clicked the image");
            },
            child: Image(image: AssetImage("asset/cat.jpg"), width: 200, height: 200,),
            )
          ],
        ),
      ),
    );
  }
}

