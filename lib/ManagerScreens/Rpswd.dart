import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/Login.dart';
import 'package:flutter_application_food/ManagerScreens/Splash.dart';
import 'package:flutter_application_food/widgets/Button.dart';

import '../constantes.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 30),
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
               Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [ BoxShadow(
                    blurRadius: 15,
                    color: Colors.grey.withOpacity(0.3),
                    offset: Offset(7, 8),)
                  ]),

              child: TextFormField(

                cursorColor: Gris,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "password",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                  icon: Icon(
                    Icons.visibility_off,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
               


              ),
            ),
             Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [ BoxShadow(
                    blurRadius: 15,
                    color: Colors.grey.withOpacity(0.3),
                    offset: Offset(7, 8),)
                  ]),

              child: TextFormField(

                cursorColor: Gris,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "confirme password",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                  icon: Icon(
                    Icons.visibility_off,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
               


              ),
            ),
                SizedBox(height: 10,),
                Button(text: "Reset Password",
                  press: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return Splash();
                    },),);
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
                        ..onTap = () {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) {
                            return LoginManager();
                          },),);
                        },


                    )),
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