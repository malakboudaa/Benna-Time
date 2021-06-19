import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Home.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import 'package:geolocator/geolocator.dart';

class Gps extends StatefulWidget {
  

  @override
  _GpsState createState() => _GpsState();
}

class _GpsState extends State<Gps> {
   var locationMessage="";
   void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);
    var lat= position.latitude;
    var long= position.longitude; 
    print ("$lat, $long");

    setState(() {
      locationMessage = "Latitude : $lat , Longitude : $long";      
    });

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
                  SizedBox(height: 90),
                Image.asset('assets/images/localisation.png',
                  height: 300,
                  width: 300,),

                SizedBox(height: 90),
                Button(
                  press: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                      .then((_) => getCurrentLocation(),);
                  },

                  text: "Activate your localisation ",

                ),
                SizedBox(height: 15,),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}