import 'package:flutter/material.dart';

void main() {
  runApp(ContainerProject());
}

class ContainerProject extends StatelessWidget {
  const ContainerProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: _buildImageColumn(),
        // child: _buildGrid(),
        // child: _buildList()
        // child: _buildStack()
        child: _buildCard(),
      ),
    );
  }

  _buildImageColumn() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Column(
        children: [
          _buildImageRow(1), _buildImageRow(3)
        ],
      ),
    );
  }

  // write a function to create a grid view
  _buildGrid() => GridView.extent(
      maxCrossAxisExtent:
    150,
  padding: EdgeInsets.all(4),
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  children: _buildGridTileList(7),
  );

  // building a listview (collection of list tiles0 and also a list Tile
  _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 w Portal Ave', Icons.theaters),
        _tile('The castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinama', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artist Stonetown Twin', '501 Buckingham Way', Icons.theaters),
        _tile('AMC Metreon 26', '135 4th St #3000', Icons.restaurant),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('CineArts at the Empire', '85 w Portal Ave', Icons.theaters),
        _tile('The castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinama', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artist Stonetown Twin', '501 Buckingham Way', Icons.theaters),
        _tile('AMC Metreon 26', '135 4th St #3000', Icons.restaurant),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('CineArts at the Empire', '85 w Portal Ave', Icons.theaters),
        _tile('The castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinama', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artist Stonetown Twin', '501 Buckingham Way', Icons.theaters),
        _tile('AMC Metreon 26', '135 4th St #3000', Icons.restaurant),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
        style: const TextStyle(
          fontSize: 20
        ),
      ),
      subtitle: Text(subtitle),
      trailing: Icon(
        icon,
        color: Colors.blue,
      ),
    );
  }

  _buildStack() {
    return Stack(
      alignment: const Alignment(0.15, 0.7),
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("asset/cat0.jpg"),
          radius: 100,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45
          ),
          child: const Text('Cat',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),),
        )
      ],
    );
  }

  _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street'
              ),
              subtitle: const Text(
                'My City, CA 99984'
              ),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue,
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('(408) 555-1212',),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text("costa@example.com"),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }

  // call a list to display all the pictures inside the grid
  List<Widget> _buildGridTileList(int count) =>
  List.generate(count, (i) => Image.asset("asset/cat${i}.jpg"));

  // in the developer tutorials, you will be given arrow function instead of curly braces, we should embrace this adaption
  _buildDecorationRow(int i) =>
      Expanded(child: 
        Container(decoration: 
          BoxDecoration(
            border: Border.all(width: 10, color: Colors.blueAccent),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          margin: EdgeInsets.all(4),
          child: Image.asset("asset/cat${i}.jpg"),
        )
      );

  _buildImageRow(int i) => Row(
    children: [
      _buildDecorationRow(i),
      _buildDecorationRow(++i)
    ],
  );
}


