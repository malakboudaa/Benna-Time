import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/Login.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import '../constantes.dart';
import 'Createprofile.dart';




class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center

        (child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),

        child: SingleChildScrollView(
          child: Column

            (children: [
            SizedBox(height: 30,),
            Image.asset('assets/images/Logo.png',
              height: 50,
              width: 200,),
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
            SizedBox(height: 25,),
            Button(
              press: () {
                 Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return CreateProfile();
                    },),);
                
              },
              text: "SignUp",
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already a memeber ? ', style: TextStyle(color: Jaune),),
                RichText(text: TextSpan(
                  text: 'Login',

                  style: TextStyle(decoration: TextDecoration.underline,
                      color: Jaune),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
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
      ),),
    );
  }
}