import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  final List<String> itemTexts = [
    'Student Council 2023-2024',
    ' Text 2',
    'Text 3',
    'Text 4',
    ' Text 5',
  ];
  final List<String> listtileinfo = [
    'images/studentcouncil1.jpg',
    'images/clubslogos/octaves.jpg'
    'images/clubslogos/mag.jpg'
    'images/clubslogos/ieee.jpg'
    'images/clubslogos/ieee.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
              (index) => Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white70.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10), // Adjust the border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0), // Add padding between card and container
                    child: Container(

                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        // Border color and width
                        borderRadius: BorderRadius.circular(10),
                        // Border radius to match card
                      ),



                      ),
                    ),
                  ),

                SizedBox(height: 10),
                Text(
                  itemTexts[index], // Use the custom text from the array
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
