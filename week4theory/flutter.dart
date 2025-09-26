import 'package:flutter/material.dart';

void main() {
  runApp(MyFab());
}

class MyFab extends StatelessWidget {
  const MyFab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFabBtn(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFabBtn extends StatefulWidget {
  const MyFabBtn({super.key});

  @override
  State<MyFabBtn> createState() => _MyFabBtnState();
}

class _MyFabBtnState extends State<MyFabBtn> {
  String _value = '';
  void _onClicked() => setState(() => _value = new DateTime.now().toString());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAB'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClicked,
        backgroundColor: Colors.red,
        // if you set mini to true then it will make you FAB small
        mini: false,
        child: Icon(Icons.timer),
      ),
      body: Container(
        padding: EdgeInsets.all(52.0),
        child: Center(
          child: Column(
            children: [
              Text(_value, style: TextStyle(fontSize: 32, color: Colors.black),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: null, child: Text('Login')),
              DataTable(columns: [
                DataColumn(label: Text('Roll Number')),
                DataColumn(label: Text('Student Name')),
                DataColumn(label: Text('Mobile Number'))
              ], rows: [
                DataRow(
                  cells: [
                    DataCell(Text('124059')),
                    DataCell(Text('J Doe')),
                    DataCell(Text('123456678')),
                  ]
                ),
                DataRow(
                    cells: [
                      DataCell(Text('349853')),
                      DataCell(Text('J Doe')),
                      DataCell(Text('123456678')),
                    ]
                ),
                DataRow(
                    cells: [
                      DataCell(Text('340968')),
                      DataCell(Text('J Doe')),
                      DataCell(Text('123456678')),
                    ]
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

