import 'package:flutter/material.dart';
class IconsPage extends StatelessWidget {
  Widget IconButton;
  String IconName;
   IconsPage({super.key , required this.IconButton , required this.IconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Container(
           child: IconButton,
          ),

        ),
        Text(IconName,style: TextStyle(color: Colors.white70,fontWeight: FontWeight.normal),),
      ],
    );
  }
}
