import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage("asset/cat1.jpg"), width: 800,)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Lake Campground", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                      ],
                    ),
                    Row(
                      children: [
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit", style: TextStyle(fontSize: 20),)
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 50,
                        ),
                        Text("41", style: TextStyle(fontSize: 20),)
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
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
                    Text("CALL", style: TextStyle(fontSize: 25, color: Colors.blue),)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.airplanemode_on,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text("ROUTE", style: TextStyle(fontSize: 25, color: Colors.blue),)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text("SHARE", style: TextStyle(fontSize: 25, color: Colors.blue),)
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Maecenas non suscipit ante, id porttitor est. Vivamus nec laoreet ex, id sodales mauris. Quisque ut feugiat lectus, et condimentum eros. Sed enim ipsum, semper vitae facilisis vel, eleifend id lorem. Mauris ut varius ligula, ut cursus ligula. Nunc porta malesuada risus in consectetur. Nulla aliquam dignissim tellus et porttitor. Quisque vitae nibh molestie, efficitur lectus eu, auctor risus. Nunc tincidunt nibh dui, sodales fermentum tellus luctus ac. Aliquam sed dui eget turpis accumsan consequat. In hac habitasse platea dictumst. ", style: TextStyle(fontSize: 20,),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

