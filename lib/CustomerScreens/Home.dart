import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:flutter_application_food/utils/api.dart';

class HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _restaurants = [];
  @override
  void initState() {
    super.initState();
    _loadRestaurants();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GrisC,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: RichText(
            text: TextSpan(
              style: 
                  
                TextStyle(fontWeight: FontWeight.bold ,fontFamily: "Montserrat"),
              children: [
                TextSpan(
                  text: "Hello, ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "Malak !",
                  style: TextStyle(color: Jaune),
                ),
              ],
            ),
          ),
        ),
        ),
      
      body: Column(children: [
        
        Expanded(
          child: ListView.builder(
                   
            itemCount: _restaurants.length,
            itemBuilder:_buildRestauItem,
            
        ),
        ),
      ],        
      ),
    );
  }
      Widget _buildRestauItem(BuildContext context, int index) {
    return Card(
      child: ListTile(
         title: Text(_restaurants[index]['name']),
            subtitle: Text(_restaurants[index]['adress']),
            
      
      ),
    );
  }
  _loadRestaurants() async {
    var response = await Network().getData('/restaulist');
    if (response.statusCode == 200) {
      setState(() {
        _restaurants = json.decode(response.body.toString());
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error ' + response.statusCode),
      ));
    }
  }
   
  
 

  
}