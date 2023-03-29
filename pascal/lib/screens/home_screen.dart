import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "lib/assets/1.jpeg",
    "lib/assets/2.jpeg",
    "lib/assets/3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(milliseconds: 1500),
                height: 200.0),
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(width: 5, height: 15, color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text('NEWS', style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const CircleAvatar(radius: 33,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:const [
                                   Text('3 Marzo 2023',  style: TextStyle(color: Colors.grey )),
                                   Text('data', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold ),)
                                ],
                              ),
                            )
                            
                            ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(thickness: 0.5,),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
