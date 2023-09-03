import 'package:flutter/material.dart';
import 'package:loginpage/widgets/ListViewHorizontal.dart';
import 'package:loginpage/widgets/imageSlider.dart';
class IdsPage extends StatelessWidget {
  const IdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(

        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 0.9, // Radius of 1.0 makes it circular
              colors: [
                Color.fromRGBO(241, 36, 85, 1),
                Color.fromRGBO(9, 15, 21, 1),
              ],
              stops: [0.17, 0.78], // Corresponding to the percentages in the CSS code
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(

                      height: 200,
                      decoration: BoxDecoration(

                        color: Colors.black26.withOpacity(0.1), // Opacity value (0.5) for semi-transparency
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
                          Text("Institute Development Society",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:Colors.white,shadows:[  Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                            color: Colors.white,
                          ),],),),

                        ],

                      ),
                    ),
                  ),
                                Container(
                               height: 100,
                                  decoration:BoxDecoration(

                                    color: Colors.black26.withOpacity(0.1), // Opacity value (0.5) for semi-transparency
                                    borderRadius: BorderRadius.circular(70), // Rounded corners
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2), // Shadow color and opacity
                                        spreadRadius: 5, // Spread radius of the shadow
                                        blurRadius: 10, // Blur radius of the shadow
                                        offset: Offset(0, 2), // Offset of the shadow
                                      ),
                                    ],
                                  ) ,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child:Text("We are a tech club specializing in following domains : Web design and development, Game development,Mobile app development, Blockchain development",
                                      style: TextStyle(color: Colors.white),),
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
                        imageSlider2(),

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
        ),
      ),
    );
  }
}

