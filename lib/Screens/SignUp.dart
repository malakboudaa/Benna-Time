import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/Screens/Login.dart';
import 'package:flutter_application_food/Screens/splash.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import 'package:flutter_application_food/widgets/EmailField.dart';
import 'package:flutter_application_food/widgets/PswField.dart';



class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center
    
      (child: Padding (padding:EdgeInsets.symmetric(horizontal: 30 ),
      
        child: SingleChildScrollView(
          child: Column
          
          (children: [
            SizedBox(height: 30,),
                 Image.asset('assets/images/Logo.png', 
                   height: 50,
                    width: 200,),
                 Image.asset('assets/images/SignUp.png',
                 height: 300,
                 width: 300,),
                 SizedBox(height: 20,), 
EmailField( htxt: "email adresse",
  icon: Icon(
    Icons.mail,
    color: Gris,
    size: 18,
  ),
  type: TextInputType.emailAddress,

),
PswField(),
PswField(),                   
 SizedBox(height: 25,),
 Button(
   press: (){
   Navigator.push(context, MaterialPageRoute(builder: (context){return SplashScreen();},),); },
   text: "SignUp",
 ),
 SizedBox(height: 20,),
Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text('Already a memeber ? ' ,style: TextStyle(color: Jaune),),
                                     RichText(text: TextSpan(
                                       text: 'Login',
                                       
                                       style: TextStyle(decoration: TextDecoration.underline,
                                       color: Jaune),
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
      ),),



    );
  }
}