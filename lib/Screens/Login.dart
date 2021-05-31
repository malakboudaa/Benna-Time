import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/Screens/Fpswd.dart';
import 'package:flutter_application_food/Screens/SignUp.dart';
import 'package:flutter_application_food/Screens/splash.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import 'package:flutter_application_food/widgets/EmailField.dart';
import 'package:flutter_application_food/widgets/PswField.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding (padding:EdgeInsets.symmetric(horizontal: 30 ),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30,),
               Image.asset('assets/images/Logo.png', 
                 height: 50,
                  width: 200,),
               Image.asset('assets/images/Signin.png',
               height: 300,
               width: 300,),
               SizedBox(height: 20,),
 EmailField(
   htxt: "email adresse",
   icon: Icon(
     Icons.email,
     size: 18,
     color: Gris,
     
   ),
   type: TextInputType.emailAddress,
 ),
 PswField(),
SizedBox(height: 25,),
Button(
  press: (){
   Navigator.push(context, MaterialPageRoute(builder: (context){return SplashScreen();},),); },
   text: "Sign In",
 ),
 SizedBox(height: 20,),
 RichText(text: TextSpan(
    text: 'Forgot password ? ',
                                     
    style: TextStyle(decoration: TextDecoration.underline,
                                     color: Colors.black),
                                     recognizer: TapGestureRecognizer()
                                     ..onTap = (){
                                       
                            Navigator.push(context, MaterialPageRoute(builder: (context){return Fpswd();},),); 
                          
                                     },
                                   ) ,
                                   ),
SizedBox(height: 40,),
 Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text('New member ? ' ,style: TextStyle(color: Jaune),),
                                   RichText(text: TextSpan(
                                     text: 'Create an account',
                                     
                                     style: TextStyle(decoration: TextDecoration.underline,
                                     color: Jaune),
                                     recognizer: TapGestureRecognizer()
                                     ..onTap = (){
                                       
                            Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();},),); 
                          
                                     },
                                   ) ,
                                   ),
                                 ],
                               )
        ],),
      ),),),

    );
  }
}