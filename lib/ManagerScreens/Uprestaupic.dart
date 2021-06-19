
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/Homepage.dart';
import 'package:image_picker/image_picker.dart';

import '../constantes.dart';
import 'Createprofile.dart';
class RestauPic extends StatefulWidget {
  

  @override
  _RestauPicState createState() => _RestauPicState();
}

class _RestauPicState extends State<RestauPic> {

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Pick your restaurant Picture :",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: _image == null
                    ? Text("No Image is picked")
                    : Image.file(_image),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Jaune,
                onPressed: getImage,
                child: Icon(Icons.add_a_photo),
              ),
              FloatingActionButton(
                backgroundColor: Jaune,
                onPressed: getImageGal,
                
                child: Icon(Icons.camera_alt),
              ),
              FloatingActionButton(
                backgroundColor: Jaune,
                onPressed: (){
                   Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    },),);
                },
               
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
        ],
      ),
    );
  }
}