import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/Screens/Login.dart';
import 'package:flutter_application_food/Screens/splash.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import 'package:flutter_application_food/widgets/PswField.dart';
class Rpswd extends StatefulWidget {
  @override
  _RpswdState createState() => _RpswdState();
}

class _RpswdState extends State<Rpswd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30 ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                  SizedBox(height: 30,),
                Image.asset('assets/images/Logo.png', 
                 height: 50,
                  width: 200,),
                   Image.asset('assets/images/Rpswd.png',
                  height: 300,
                  width: 300,),
                   SizedBox(height: 10,),
                   
                   SizedBox(height: 20,),
                  PswField(),
                  PswField(
                    
                  ),
                  SizedBox(height: 10,),
                  Button(text: "Reset Password",
                  press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SplashScreen();},),);
   },),
                  SizedBox(height: 100,),
                   Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [

                                     RichText(text: TextSpan(
                                       text: 'Back to Login',

                                       
                                       style: TextStyle(decoration: TextDecoration.underline,
                                       color: Colors.black, fontSize: 18),
                                       recognizer: TapGestureRecognizer()
                                       ..onTap = (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();},),); },

                                       
                                     ) ),
                                   ],
                                 ),              
                ],               
                ),
          ),
            ),
          
        
      ),      
    );
  }
}