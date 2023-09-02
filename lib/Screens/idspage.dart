import 'package:flutter/material.dart';
import 'package:loginpage/widgets/ListViewHorizontal.dart';
import 'package:loginpage/widgets/imageSlider.dart';
class IdsPage extends StatelessWidget {
  const IdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(

                    color: Colors.white70.withOpacity(0.8), // Opacity value (0.5) for semi-transparency
                    borderRadius: BorderRadius.circular(50), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color and opacity
                        spreadRadius: 5, // Spread radius of the shadow
                        blurRadius: 10, // Blur radius of the shadow
                        offset: Offset(0, 3), // Offset of the shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/clubslogos/ids.jpg'),
                      ),
                      Text("Institute Development Society",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,shadows:[  Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.grey,
                      ),],),),

                    ],

                  ),
                ),
              ),
                            Container(
                           height: 100,
                              decoration:BoxDecoration(

                                color: Colors.white70.withOpacity(0.8), // Opacity value (0.5) for semi-transparency
                                borderRadius: BorderRadius.circular(70), // Rounded corners
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2), // Shadow color and opacity
                                    spreadRadius: 5, // Spread radius of the shadow
                                    blurRadius: 10, // Blur radius of the shadow
                                    offset: Offset(0, 3), // Offset of the shadow
                                  ),
                                ],
                              ) ,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived "),
                                )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text("WORKSHOPS AND EVENTS",style: TextStyle(shadows:[  Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.grey,
                    ),],fontWeight: FontWeight.bold,fontSize: 22),),
                    imageSlider(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text("CORE MEMBERS",style: TextStyle(shadows:[  Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.grey,
                    ),],fontWeight: FontWeight.bold,fontSize: 25),),
                    imageSlider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

