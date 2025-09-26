import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RentApp(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RentApp extends StatelessWidget {
  const RentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(32),
            width: 400,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image(image: AssetImage('assets/apartment.jpg'), fit: BoxFit.cover, height: 250, width: 400,),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Chill Apartment', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    Text('Katowice', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('350 \$', style: TextStyle(color: Colors.blue),),
                        Text(' per night', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.white,),
                        Text('4.0/5', style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image(image: AssetImage('assets/hotel.jpg'), fit: BoxFit.cover, height: 250, width: 400,),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Luxury Katowice Hotel', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    Text('Katowice', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('500 \$', style: TextStyle(color: Colors.blue),),
                        Text(' per night', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.white,),
                        Text('4.2/5', style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}

