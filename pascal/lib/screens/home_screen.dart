import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images =[
  "lib/assets/1.jpeg",
  "lib/assets/2.jpeg",
  "lib/assets/3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
  options: CarouselOptions(autoPlay: true,
  autoPlayInterval: Duration(milliseconds: 1500),
    height: 200.0),
    itemBuilder: (context, index, realIndex) {
      return Container(
        child: Image.asset(images[index], fit: BoxFit.fill,),
      );
      
    },
)
        ],
      ),
    );
  }
}