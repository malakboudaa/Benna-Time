import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Fpswd.dart';
import 'package:flutter_application_food/CustomerScreens/Home.dart';
import 'package:flutter_application_food/CustomerScreens/SignUp.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:flutter_application_food/utils/api.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email;
  var password;


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30,),
            Image.asset('assets/images/Logo.png',
              height: 50,
              width: 200,),
              SizedBox(height: 10,),
            Image.asset('assets/images/Signin.png',
              height: 300,
              width: 300,),
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
                validator: (emailValue) {
                  if (emailValue.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
                onChanged: (value) {
                  email = value;
                },
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
                validator: (passwordValue) {
                  if (passwordValue.isEmpty) {
                    return 'Please enter password';
                  }

                  return null;
                },
                onChanged: (value) {
                  password = value;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),

            SizedBox(height: 25,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 5),)
                  ]),
              child: FlatButton(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                color: Jaune,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                      .then((_) => _login(),);
                },
                child:
                Text("Sign In ",
                  style: TextStyle(fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400),
                ),

              ),
            ),
            SizedBox(height: 20,),
            RichText(text: TextSpan(
              text: 'Forgot password ? ',

              style: TextStyle(decoration: TextDecoration.underline,
                  color: Colors.black),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return Fpswd();
                    },),);
                },
            ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New member ? ', style: TextStyle(color: Jaune),),
                RichText(text: TextSpan(
                  text: 'Create an account',
                  style: TextStyle(decoration: TextDecoration.underline,
                      color: Jaune),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    },),);
                    },
                ),
                ),
              ],
            ),
          ],),
        ),),),
    );
  }

  _showMsg(msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          
        },
      ),
    ));
  }

  void _login() async {
   
    var data = {'email': email, 'password': password};

    var response = await Network().postData(data, '/login');
    //getting the login route

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      _showMsg(response.body);

      SharedPreferences localStorage = await SharedPreferences.getInstance();
      //to save key value data 
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
 
      Navigator.pop(context);
    } else {
      _showMsg('Error ${response.statusCode}');
    }
  }
}



