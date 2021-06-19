import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/Homepage.dart';
import 'package:flutter_application_food/ManagerScreens/MealsList.dart';
import 'package:flutter_application_food/utils/api.dart';
import 'package:flutter_application_food/widgets/Button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

import '../constantes.dart';
import 'Createprofile.dart';


class AddMeal extends StatefulWidget {


  @override
  _AddMealState createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
   File _image;
  final picker = ImagePicker();
  

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
    Future getImageGal() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

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
                      return HomePage();
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
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 12),
                width: double.infinity,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [ BoxShadow(
                      blurRadius: 15,
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(7, 8),)
                    ]),

                child: TextFormField(

                  cursorColor: Gris,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                   
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 12),
                width: double.infinity,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [ BoxShadow(
                      blurRadius: 15,
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(7, 8),)
                    ]),

                child: TextFormField(

                  cursorColor: Gris,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Price",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(height: 50,),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Jaune,
                onPressed: getImage,
                tooltip: "pickImage",
                child: Icon(Icons.add_a_photo),
              ),
              FloatingActionButton(
                backgroundColor: Jaune,
                onPressed: getImageGal,
                tooltip: "Pick Image",
                child: Icon(Icons.camera_alt),
              ),
              FloatingActionButton(
                backgroundColor: Jaune,
                onPressed: (){
                   Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return CreateProfile();
                    },),);
                },
                tooltip: "Pick Image",
                child: Icon(Icons.arrow_forward),
              )
            ],
          ),
           SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("from Camera"),
                Text("from Galary"),
                Text("Next Step"),

              ],
            ),
          ),
          SizedBox(height: 30,),
          Button(
            text: "Sumbit",
            press: (){
              Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return MealsList();
                    },),);
              //_submit();

            },

          ),
          ],
        ),
      ),
    );
    

      
    
  }
  //var data = new Map<String, String>();
    //data['name'] = name;
    //data['price'] = price;
    //data['IdRestaurant'] = restaurant_id.toString();
    //data['category_id'] = category_id.toString();
    //data['image'] = _image.path;

    // var map = new Map<String, dynamic>();
    // map['email'] = email;
    // map['password'] = password;
    //var response =
        //await Network().postDataWithImage(data, '/meals', _image.path);

    //if (response.statusCode == 201) {
      //Navigator.pop(context);
    //} else {
     // _showMsg('Error ${response.statusCode}');
    //}
 // }

  //_showMsg(msg) {
    //ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //content: Text(msg),
      //action: SnackBarAction(
        //label: 'Close',
        //onPressed: () {
          // Some code to undo the change!
        //},
      //),
    //));
  //}
   
  
}