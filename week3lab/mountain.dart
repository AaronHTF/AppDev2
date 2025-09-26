import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstLake());
}

class MyFirstLake extends StatelessWidget {
  const MyFirstLake({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySwissTrip(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySwissTrip extends StatelessWidget {
  const MySwissTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lake View"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset("asset/mountain.jpg", width: 400, height: 300, fit: BoxFit.cover,),
          Padding(padding: EdgeInsets.all(32),
          child: Row(
            children: [
              Expanded(child: Column( // Expanded: used to fit the entire column widget inside the given space
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text("Mountain", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Text("Switzerland", style: TextStyle(color: Colors.grey),)
                ],
              )),
              Icon(Icons.star, color: Colors.yellow,),
              Text("41"),
            ],
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue,),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Call", style: TextStyle(color: Colors.blue, fontSize: 12),),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.flight, color: Colors.blue,),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Route", style: TextStyle(color: Colors.blue, fontSize: 12),),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue,),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Share", style: TextStyle(color: Colors.blue, fontSize: 12),),
                  )
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(32),
          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nunc nunc, maximus vel cursus vel, pretium sed justo. Nulla dignissim, libero et iaculis lacinia, orci risus maximus odio, sed mollis est dolor a sapien. Duis tincidunt arcu vel libero dignissim sagittis. Aenean accumsan hendrerit ullamcorper. Morbi at dolor non ligula ultricies pharetra sed sed erat. Donec porttitor aliquam sollicitudin. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam nisi metus, tempus a nisi sed, sollicitudin rutrum neque. Etiam pulvinar semper lectus, quis facilisis risus fringilla id. ", softWrap: true, textAlign: TextAlign.justify,),)
        ],
      ),
    );
  }
}

