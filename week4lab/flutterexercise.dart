import 'package:flutter/material.dart';

void main() {
  runApp(BasketballApp());
}

class BasketballApp extends StatelessWidget {
  const BasketballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Basketball(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int team1Score = 0;
  int team2Score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basketball Score Application'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/team1.png'),
                    radius: 75,
                  ),
                  Text('$team1Score', style: TextStyle(fontSize: 100),),
                  ElevatedButton(onPressed: () {setState(() {
                    team1Score += 1;
                  });}, child: Text('Add 1 point', style: TextStyle(color: Colors.black),), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      team1Score += 2;
                    });
                  }, child: Text('Add 2 point', style: TextStyle(color: Colors.black)), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      team1Score += 3;
                    });
                  }, child: Text('Add 3 point', style: TextStyle(color: Colors.black)), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),),
                ],
              ),
              SizedBox(width: 40,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/team2.png'),
                    radius: 75,
                  ),
                  Text('$team2Score', style: TextStyle(fontSize: 100),),
                  ElevatedButton(onPressed: () {setState(() {
                    team2Score += 1;
                  });}, child: Text('Add 1 point', style: TextStyle(color: Colors.black)), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      team2Score += 2;
                    });
                  }, child: Text('Add 2 point', style: TextStyle(color: Colors.black)), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      team2Score += 3;
                    });
                  }, child: Text('Add 3 point', style: TextStyle(color: Colors.black)), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),),
                ],
              ),
            ],
          ),
            SizedBox(height: 80,),
            ElevatedButton(onPressed: () {setState(() {
              team1Score = 0;
              team2Score = 0;
            });}, child: Text('Reset Points', style: TextStyle(color: Colors.black)), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              if (team1Score > team2Score) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Center(
                      child: Text("Team 1 Wins!", style: TextStyle(fontSize: 25),),
                    )
                    )
                );
              } else if (team2Score > team1Score) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Center(
                      child: Text("Team 2 Wins!", style: TextStyle(fontSize: 25),),
                    )
                    )
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Center(
                      child: Text("Tie!", style: TextStyle(fontSize: 25),),
                    )
                    )
                );
              }
            }, child: Text('Show final Results', style: TextStyle(color: Colors.black)), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),)
        ]
      ),
    )
    );
  }
}

