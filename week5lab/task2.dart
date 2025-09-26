import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HotelApp extends StatefulWidget {
  const HotelApp({super.key});

  @override
  State<HotelApp> createState() => _HotelAppState();
}

class _HotelAppState extends State<HotelApp> {
  int guest = 1;
  int room = 1;

  void incrementGuest() {
    setState(() {
      guest++;
    });
  }

  void decreaseGuest() {
    setState(() {
      if (guest > 1) {
        guest--;
      }
    });
  }

  void incrementRoom() {
    setState(() {
      room++;
    });
  }

  void decreaseRoom() {
    setState(() {
      if (room > 1) {
        room--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_back_ios, color: Colors.orange,),
            Text('Home', style: TextStyle(color: Colors.orange), overflow: TextOverflow.ellipsis,),
          ],
        ),
        title: Text('Hotels', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.black,),
            title: Text('Las Vegas, NV', style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey,),
          ),
          Divider(color: Colors.black,),
          ListTile(
            leading: Icon(Icons.people, color: Colors.black,),
            title: Text('$guest Guests', style: TextStyle(fontSize: 20),),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: () {decreaseGuest();}, child: Text('-', style: TextStyle(color: Colors.orangeAccent, fontSize: 20),), style:
                  ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.zero,
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.circular(5)
                    ))),
                    side: WidgetStatePropertyAll(BorderSide(color: Colors.orangeAccent, width: 3))
                  ),),
                ElevatedButton(onPressed: () {incrementGuest();}, child: Text('+', style: TextStyle(color: Colors.orangeAccent, fontSize: 20),), style:
                ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.zero,
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.circular(5)
                    ))),
                    side: WidgetStatePropertyAll(BorderSide(color: Colors.orangeAccent, width: 3))
                )),
              ],
            ),
          ),
          Divider(color: Colors.black,),
          ListTile(
            leading: Icon(Icons.bed, color: Colors.black,),
            title: Text('$room Room', style: TextStyle(fontSize: 20),),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: () {decreaseRoom();}, child: Text('-', style: TextStyle(color: Colors.orangeAccent, fontSize: 20),), style:
                ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.zero,
                        bottomRight: Radius.zero,
                        bottomLeft: Radius.circular(5)
                    ))),
                    side: WidgetStatePropertyAll(BorderSide(color: Colors.orangeAccent, width: 3))
                )),
                ElevatedButton(onPressed: () {incrementRoom();}, child: Text('+', style: TextStyle(color: Colors.orangeAccent, fontSize: 20),),style:
                ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.zero,
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.circular(5)
                    ))),
                    side: WidgetStatePropertyAll(BorderSide(color: Colors.orangeAccent, width: 3))
                )),
              ],
            ),
          ),
          Divider(color: Colors.black,),
          ListTile(
            leading: Icon(Icons.arrow_forward, color: Colors.black,),
            title: Text('Today', style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey,),
          ),
          Divider(color: Colors.black,),
          ListTile(
            leading: Icon(Icons.arrow_back, color: Colors.black,),
            title: Text('Tomorrow', style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey,),
          ),
          Divider(color: Colors.black,),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You are trying to book $guest guests and $room rooms.'))
              );
            },  child: Text('Reserve', style: TextStyle(color: Colors.black, fontSize: 25),), style:
              ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.deepOrangeAccent),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
              ),)],
          )
        ],
      ),
    );
  }
}

