import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/AddMeal.dart';
import 'package:flutter_application_food/ManagerScreens/MealsList.dart';
import 'package:flutter_application_food/ManagerScreens/Orders.dart';
import 'package:flutter_application_food/ManagerScreens/Splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constantes.dart';
import 'Login.dart';

class HomePage extends StatefulWidget {
 

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GrisC,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return Splash();
                    },),);
            },
            color:Jaune,
            icon : Icon(
              FontAwesomeIcons.arrowLeft
              
            )
          )
        ],
        
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [

            Container(
              height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
       boxShadow: [  
          BoxShadow(  
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0,5), )]),
            child: FlatButton(
              
              
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
              minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12),
             color: Jaune,
              onPressed: (){
                Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return MealsList();
                    },),);

              },
                child:
                Text("My Meals",
                 style: TextStyle(fontSize: 17,color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),
                   ), 
                
                   ),
                  ),
                  SizedBox(height: 40,),
                   Container(
              height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
       boxShadow: [  
          BoxShadow(  
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0,5), )]),
            child: FlatButton(
              
              
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
              minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12),
             color: Jaune,
              onPressed: (){
                Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return AddMeal();
                    },),);

              },
                child:
                Text("Add New Meals",
                 style: TextStyle(fontSize: 17,color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),
                   ), 
                
                   ),
                  ),
                  SizedBox(height: 40),

                  Container(
                    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
       boxShadow: [  
          BoxShadow(  
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0,5), )]),
            child: FlatButton(
              
              
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
              minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12),
             color: Jaune,
              onPressed: (){
                Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return Orders();
                    },),);

              },
                child:
                Text("My Orders",
                 style: TextStyle(fontSize: 17,color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),
                   ), 
                
                   ),
                  ),
            

          ],

        ),
      ),
      
    );
  }
}