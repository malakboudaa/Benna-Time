import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Fpswd.dart';
import 'package:flutter_application_food/CustomerScreens/Home.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:flutter_application_food/widgets/Button.dart';
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

 
  _showMsg(msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    ));
  }

  void _login() async {
    // setState(() {
    //   _isLoading = true;
    // });
    var data = {'email': email, 'password': password};

    // var map = new Map<String, dynamic>();
    // map['email'] = email;
    // map['password'] = password;
    var response = await Network().postData(data,'/login');

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      _showMsg(response.body);

      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      // Navigator.push(
      //   context,
      //   new MaterialPageRoute(builder: (context) => Home()),
      // );
      //_showMsg(body['message']);
      Navigator.pop(context);
    } else {
      _showMsg('Error ${response.statusCode}');
    }

    // setState(() {
    //   _isLoading = false;
    // });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
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

            SizedBox(height: 25,),
            Button(

              text: "Sign In",
              press: () {
                _login();
              },
            ),
            SizedBox(height: 20,),
            RichText(text: TextSpan(
              text: 'Forgot password ? ',

              style: TextStyle(decoration: TextDecoration.underline,
                  color: Colors.black),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
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
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) {
                        return HomePage();
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
}