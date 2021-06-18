
import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Login.dart';
import 'package:flutter_application_food/utils/SharedPreferencesCustomer.dart';
import 'package:flutter_application_food/widgets/Button.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   var loginText = '';

    var sharedPreferencesC = new SharedPreferencesCustomer();

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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/Logo.png',
                  height: 50,
                  width: 200,),
                Image.asset('assets/images/splash.png',
                  height: 300,
                  width: 300,),

                Text(
                  "Hello and Welcome to your favorite Food App Delivery , You can chose which account would you use by clicking ! ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),),
                SizedBox(height: 90),
                Button(
                  press: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()))
                  .then((_) => _checkLoggedInUser());
                  },

                  text: "Are you hungry ? Start",

                ),
               
                
              ],
            ),
          ),
        ),


      ),
    );
  }
}