import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenInterface(),
    );
  }
}

class ScreenInterface extends StatefulWidget {
  const ScreenInterface({super.key});

  @override
  State<ScreenInterface> createState() => _ScreenInterfaceState();
}

class _ScreenInterfaceState extends State<ScreenInterface> {
  // Create a database instance
  Database? database;
  List<Dog> dogList = []; // create a container to store the dog instance

  // create the controller

  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _brandController = TextEditingController();

  // this function will launch once we start the application
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeDatabase();
  }

  Future<void> initializeDatabase() async {
    final dbpath = await getDatabasesPath();
    final path = join(dbpath, 'animaldatabase.db');
    database = await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE dogs(id integer primary key autoincrement, name text, age integer, brand text)');
      },
    );
    await refreshDogs();
  }

  // define the function
  Future<void> refreshDogs() async {
    if (database == null) return;
    final List<Map<String, dynamic>> maps = await database!.query('dogs');
    setState(() {
      dogList = List.generate(maps.length, (i) {
        return Dog(
            id: maps[i]['id'],
            name: maps[i]['name'],
            age: maps[i]['age'],
            brand: maps[i]['brand']);
      });
    });
  }

  Future<void> insertDog(Dog dog) async {
    await database!.insert('dogs', dog.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    await refreshDogs();
  }

  Future<void> updateDog(Dog dog) async {
    await database!
        .update('dogs', dog.toMap(), where: 'id = ?', whereArgs: [dog.id]);
    await refreshDogs();
  }

  Future<void> deleteDog(int id) async {
    await database!.delete('dogs', where: 'id = ?', whereArgs: [id]);
    await refreshDogs();
  }

  // function to clear the forms
  void clearForm() {
    _idController.clear();
    _nameController.clear();
    _ageController.clear();
    _brandController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sqlite demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: _idController,
              decoration: InputDecoration(labelText: 'ID'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _brandController,
              decoration: InputDecoration(labelText: 'Brand'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      final name = _nameController.text.trim();
                      final age = int.tryParse(_ageController.text) ?? 0;
                      final brand = _brandController.text.trim();

                      if (name.isNotEmpty && age > 0) {
                        await insertDog(
                            Dog(id: 0, name: name, age: age, brand: brand));
                        clearForm();
                      }
                    },
                    child: Text('Add')),
                ElevatedButton(
                    onPressed: () async {
                      final id = int.tryParse(_idController.text);
                      final name = _nameController.text.trim();
                      final age = int.tryParse(_ageController.text) ?? 0;
                      final brand = _brandController.text.trim();

                      if (id != null && name.isNotEmpty && age > 0) {
                        await updateDog(
                            Dog(id: 0, name: name, age: age, brand: brand));
                        clearForm();
                      }
                    },
                    child: Text('Update')),
                ElevatedButton(
                    onPressed: () async {
                      final id = int.tryParse(_idController.text);

                      if (id != null) {
                        await deleteDog(id);
                        clearForm();
                      }
                    },
                    child: Text('Delete')),
                ElevatedButton(onPressed: () async {
                  await refreshDogs();
                }, child: Text('Display dogs'))
              ],
            ),
            SizedBox(height: 10,),
            // Display the dog instances
            Expanded(
                child: dogList.isEmpty ? Center(child: Text('No Data Found'),
                ) : ListView.builder(itemCount: dogList.length, itemBuilder: (context, index) {
                  final dog = dogList[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Text('${dog.id}'),),
                      title: Text(dog.name),
                      subtitle: Text('Age: ${dog.age} | Brand: ${dog.brand}'),
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}

class Dog {
  final int id;
  final String name;
  final int age;
  final String brand;

  Dog({required this.id,
    required this.name,
    required this.age,
    required this.brand});

  Map<String, Object?> toMap() {
    return {'id': id, 'name': name, 'age': age, 'brand': brand};
  }

  @override
  String toString() {
    return 'Dog{id: $id, name: $name, age: $age, brand: $brand}';
  }
}
