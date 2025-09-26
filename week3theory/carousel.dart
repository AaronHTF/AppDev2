import 'package:flutter/material.dart';

void main() {
  runApp(ImageCarousel());
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CarouselApp extends StatelessWidget {
  const CarouselApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}

