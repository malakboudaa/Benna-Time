import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/Screens/Rpswd.dart';
import 'package:flutter_application_food/Screens/splash.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import 'package:flutter_application_food/widgets/EmailField.dart';
import 'package:flutter_application_food/constantes.dart';
import 'Login.dart';

class Fpswd extends StatelessWidget {
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
                   Image.asset('assets/images/Fpswd.png',
                  height: 300,
                  width: 300,),
                   SizedBox(height: 10,),
                  Text("Enter The email adresse associted with your account ", textAlign: TextAlign.center,
                    style: TextStyle( 
                       fontFamily: 'Montserrat',fontWeight: FontWeight.w500,fontSize: 15, ), ), 
                   SizedBox(height: 20,),
                  EmailField(htxt: "email adresse",icon: Icon(Icons.mail,color: Gris,size: 18,),type: TextInputType.emailAddress,),
                  SizedBox(height: 10,),
                  Button(text: "Send",
                  press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return Rpswd();},),); },
                  ),
                  SizedBox(height: 100,),
                   Row(mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     RichText(text: TextSpan(
                                       text: 'Back to Login',
                                       style: TextStyle(decoration: TextDecoration.underline,
                                       color: Colors.black, fontSize: 18),
                                       recognizer: TapGestureRecognizer()
                                       ..onTap = (){
                                         Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();},),); 
                                       },
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