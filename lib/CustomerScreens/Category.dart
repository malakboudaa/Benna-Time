import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Infomeal.dart';
import 'package:flutter_application_food/CustomerScreens/MealsList.dart';
import 'package:flutter_application_food/utils/api.dart';

import '../constantes.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  //var _cat = [];
  var _category = [
    
  {'nom':'Pizzas '
  },
   {'nom':'Burgers'
  },
   {'nom':'Pastas '
  },
   {'nom':'Drinks '
  },
   {'nom':'Plats '
  },
   {'nom':'Sweets '
  },
 

  ];
  
   //@override
  //void initState() {
    //super.initState();
    //_loadcat();
  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _category.length,
        itemBuilder: (context , i)
        {
          return InkWell(
            onTap: (){
              Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                      return MealsList();
                    },),);

            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 5),)
                  ]),

              height: 150,
              width: 60,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: 
                      Image.asset("assets/images/foodone.jpg" , height: 100,)),
                      ),
                      SizedBox(width: 20,),
                    Expanded(
                      flex: 1,
                      child: Container

                      (height: 160,
                      alignment: Alignment.topRight,
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(40),
                              margin: EdgeInsets.only(top: 10,bottom: 10),
                              child: Text(_category[i]['nom'],
                              style: TextStyle(fontFamily: "Montserrat",fontSize: 20 , fontWeight: FontWeight.bold),),
                            ),    
                        ],),
                      ),)
                  ],
                ),

            ),),

          );
        }
        )); 
  }
  
    //_loadcat() async {
    //var response = await Network().getData('/catergorylist');
    //if (response.statusCode == 200) {
      //setState(() {
        //_cat = json.decode(response.body);
      //});
    //} else {
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(
       //content: Text('Error ' + response.statusCode),
      //));
    //}
  //}
}