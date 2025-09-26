import 'package:flutter/material.dart';

void main() {
  runApp(GridViewProject());
}

class GridViewProject extends StatelessWidget {
  const GridViewProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGridView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageGridView extends StatelessWidget {
  const ImageGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

      ),
    );
  }
}

