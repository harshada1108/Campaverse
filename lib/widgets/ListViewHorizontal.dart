import 'package:flutter/material.dart';

class HorizontalScrollCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          HorizontalCard(imageUrl: 'images/clubslogos/ids.jpg',onTap: (){ Navigator.pushNamed(context, '/idspage');},),
          HorizontalCard(imageUrl: 'images/studentcouncil1.jpg',onTap: (){Navigator.pushNamed(context, '/studentcouncil');},),

          HorizontalCard(imageUrl: 'images/axis.jpg',onTap: (){},),
         // HorizontalCard(imageUrl: 'images/arohi,jpg',onTap: (){},),
        ],
      ),
    );
  }
}

class HorizontalCard extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  HorizontalCard({required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(

        color: Color.fromRGBO(9, 15, 21, 1).withOpacity(0.1), // Opacity value (0.5) for semi-transparency
        borderRadius: BorderRadius.circular(50), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color and opacity
            spreadRadius: 5, // Spread radius of the shadow
            blurRadius: 10, // Blur radius of the shadow
            offset: Offset(0, 3), // Offset of the shadow
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Container(
            width: 200.0, // Adjust card width as needed
            height: 200.0, // Adjust card height as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
