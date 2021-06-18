import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/SignUp.dart';
import 'package:flutter_application_food/utils/SharedPreferencesManager.dart';
import 'package:flutter_application_food/widgets/Button.dart';


class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
     var loginText = '';

    var sharedPreferencesC = new SharedPreferencesManager();

 _checkLoggedInUser() async {
    var token = await sharedPreferencesC.getAuthToken();
    if (token != null) {
      var user = await sharedPreferencesC.getCurrentUser();
      setState(() {
        loginText = 'Welcome ' + user['email'];
      });
    } else
      setState(() {
        loginText = 'No user logged in';
      });
  }

    @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkLoggedInUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(child: Column(children: [
          Image.asset("assets/myLogo.png"),
          SizedBox(height: 180,),
        
        Button(
                  press: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    },),);
                  },

                  text: "Start creating your own restaurant ",

                ),
                SizedBox(height: 30,),
                 Button(
                  press: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Splash()))
                  .then((_) => _checkLoggedInUser());
                  },

                  text: " If you already have one, click here ",

                ),
                
                
                
                
                ],
        ),
        ),
        ),
      ),


      
    );
  }
}