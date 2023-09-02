import 'package:flutter/material.dart';
class IdsPage extends StatelessWidget {
  const IdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/clubslogos/ids.jpg'),
                  ),
                  Text("INSTITUTE DEVELOPMENT SOCIETY"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

