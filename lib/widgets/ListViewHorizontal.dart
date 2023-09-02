import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class imageSlider extends StatelessWidget {
  final List<String> images = [
    'images/studentcouncil1.jpg',
    'images/clubslogos/ids.jpg',
    'images/idscore/bhushanbahale.jpg',
    'images/idscore/nvibhavan.jpg',
    'images/idscore/shrivardhini.jpg',
   'images/idscore/vanshikarajput.jpg',
    'images/idscore/yashgaikwad.jpg'

  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 300,
      child: CarouselSlider(

        items: images.map((imagePath) {
          return Image.asset(
            imagePath,
            fit: BoxFit.cover,
          );
        }).toList(),
        options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            aspectRatio: 16 / 9,
            enlargeCenterPage: true
        ),
      ),);
  }
}