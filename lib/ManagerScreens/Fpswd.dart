import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/Login.dart';
import 'package:flutter_application_food/ManagerScreens/Rpswd.dart';
import 'package:flutter_application_food/widgets/Button.dart';

import '../constantes.dart';

class Fpswd extends StatefulWidget {
  

  @override
  _FpswdState createState() => _FpswdState();
}

class _FpswdState extends State<Fpswd> {
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
                Image.asset('assets/images/Fpswd.png',
                  height: 300,
                  width: 300,),
                SizedBox(height: 10,),
                Text("Enter The email adresse associted with your account ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,),),
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
                    offset: Offset(5, 8),)
                  ]
              ),
              child: TextFormField(
                cursorColor: Gris,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "email adress",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),
                  icon: Icon(
                    Icons.email,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,

              ),
            ), 
                SizedBox(height: 10,),
                Button(text: "Send",
                  press: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return Rpswd();
                    },),);
                  },
                ),
                SizedBox(height: 100,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
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