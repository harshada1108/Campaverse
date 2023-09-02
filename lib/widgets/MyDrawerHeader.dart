import 'package:flutter/material.dart';
class MyDrawerHeader extends StatefulWidget {
  final Function(String, String) updateDrawerHeader;
  const MyDrawerHeader({super.key, required this.updateDrawerHeader});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}


class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  String _name = '';
  String _enrollmentNo = '';

  void updateUserData(String name, String enrollmentNo) {
    setState(() {
      _name = name;
      _enrollmentNo = enrollmentNo;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.only(top: 35,bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/avatar.jpeg'),

            ),
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name', style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.normal),),
                Divider(height: 5,),
                Text('Enrollment no',style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.normal)),
              ],
            )
          ],


        ),
      ),
    );
  }
}
