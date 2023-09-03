import 'package:flutter/material.dart';
import 'package:loginpage/Screens/SecondScreen.dart';
import 'SecondScreen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

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


      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white.withOpacity(0.1),
              backgroundImage: AssetImage('images/clubslogos/ids.jpg'),

            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text('C A M P A V E R S E',style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w700,shadows:[  Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 3.0,
              color: Colors.grey,
            ),]

            ),),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70,),
            child:Container(
                width: 50,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white70.withOpacity(0.1), // Opacity value (0.5) for semi-transparency
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
                child: Padding(

                  padding: const EdgeInsets.symmetric(vertical:30,horizontal: 20),
                  child: Column(
                    children: [
                      Text("Student Login",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w900,fontSize: 22),),
                      SizedBox(height: 45,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Student Id",
                          fillColor: Colors.white.withOpacity(0.1), // Opacity for the input area
                            filled: true,
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.account_circle,
                          )
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",

                            fillColor: Colors.white.withOpacity(0.1), // Opacity for the input area
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(
                                Icons.lock
                            ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25,top: 10),
                        child: InkWell(
                          onTap: (){},
                            child: Text("Forgot password?",style: TextStyle(color: Colors.white),)),
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/secondScreen');
                      }, child: Text("Log in"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2), // Change button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), // Rounded corners
                          ),
                          minimumSize: Size(150, 50), // Set minimum button size
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/signUpScreen');
                          },
                          child: Container(

                            child: Text(
                              "Dont have an account? SignUp now!",
                            ),


                          ),
                        ),
                      )
                    ],
                  ),
                )
          ),
          )



        ],
      ),
    )
    );
  }
}
