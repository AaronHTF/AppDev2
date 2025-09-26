import 'package:flutter/material.dart';

void main() {
  runApp(Coffee());
}

class Coffee extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoffeeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CoffeeApp extends StatefulWidget {
  const CoffeeApp({super.key});

  @override
  State<CoffeeApp> createState() => _CoffeeAppState();
}

class _CoffeeAppState extends State<CoffeeApp> {
  int price1 = 10;
  int price2 = 5;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffee", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset("asset/coffee1.jpg", fit: BoxFit.cover, width: 200, height: 300,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("$price1\$"),
                          ElevatedButton(onPressed: () {}, child: Text("+"))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset("asset/coffee2.jpg", fit: BoxFit.cover, width: 200, height: 300,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("$price2\$"),
                          ElevatedButton(onPressed: () {}, child: Text("+"))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

