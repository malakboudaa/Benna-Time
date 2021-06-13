import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Login.dart';
import 'package:flutter_application_food/widgets/Button.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/Logo.png',
                  height: 50,
                  width: 200,),
                Image.asset('assets/images/splash.png',
                  height: 300,
                  width: 300,),

                Text(
                  "Hello and Welcome to your favorite Food App Delivery , You can chose which account would you use by clicking ! ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),),
                SizedBox(height: 90),
                Button(
                  press: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    },),);
                  },

                  text: "Client Account",

                ),
                SizedBox(height: 15,),
                Button(
                  press: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    },),);
                  },
                  text: "Restaurant account",
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }
}