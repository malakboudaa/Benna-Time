import 'package:flutter/material.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import '../constantes.dart';
import 'Uprestaupic.dart';

class CreateProfile extends StatefulWidget {
  

  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(child: Column(children: [
          Text("You are here To create your new restaurant: ", style: TextStyle(fontSize: 15),),
          SizedBox(height: 30,),
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
                  hintText: "Restaurant name",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),
                  icon: Icon(
                    Icons.food_bank,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.text,

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
                    offset: Offset(5, 8),)
                  ]
              ),
              child: TextFormField(
                cursorColor: Gris,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Adress",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),
                  icon: Icon(
                    Icons.home,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.text,

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
                    offset: Offset(5, 8),)
                  ]
              ),
              child: TextFormField(
                cursorColor: Gris,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "State",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),
                  icon: Icon(
                    Icons.close,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.text,

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
                    offset: Offset(5, 8),)
                  ]
              ),
              child: TextFormField(
                cursorColor: Gris,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "+213 ",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),
                  icon: Icon(
                    Icons.phone,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.phone,

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
                    offset: Offset(5, 8),)
                  ]
              ),
              child: TextFormField(
                cursorColor: Gris,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Work Hours",
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, color: Gris,),
                  icon: Icon(
                    Icons.hourglass_bottom,
                    size: 18,
                    color: Gris,
                  ),
                ),
                keyboardType: TextInputType.datetime,

              ),
            ),
            SizedBox(height: 40),
            

        Button(
                  press: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return RestauPic();
                    },),);
                  },

                  text: "Click to continue ",

                ), ],
        ),
        ),
        ),
        ),
    );
  }
}