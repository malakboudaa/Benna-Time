import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/utils/api.dart';
import 'package:flutter_application_food/CustomerScreens/infomeal.dart';

import '../constantes.dart';



class MealsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MealsListState();
  }
}

class _MealsListState extends State<MealsList> {
  var _meals = [
  
{
  'name':'Pizza Boisée Viande Hachée',
  'Price':'450',
 

},
{
  'name':'Pizza Boisée Megez',
  'Price':'450',
  

},
{
  'name':'Pizza Boisée Megez',
  'Price':'450',
  

},
 {
  'name':'Pizza Boisée Poulet',
  'Price':'450',
  

},
{
  'name':'Pizza Sauce Rouge Thon',
  'Price':'400',
  

},
{
  'name':'Pizza Sauce Rouge Mergez',
  'Price':'400',
  

},
{
  'name':'Pizza Marguerita',
  'Price':'250',
  

},
];
 //@override
  //void initState() {
    //super.initState();
    //_loadmeals();
  //}
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _meals.length,
        itemBuilder: (context , i)
        {
          return InkWell(
            onTap: (){
              Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) {
                      return InfoPage();
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
              width: 100,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        
                        
                        child: 

                      Image.asset("assets/images/pizzab.jpg" , height: 80,)),
                      ),
                      SizedBox(width: 20,),
                    Expanded(
                      flex: 2,
                      child: Container

                      (height: 160,
                      alignment: Alignment.topRight,
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              
                              margin: EdgeInsets.only(top: 10,bottom: 10),
                              child: Text(_meals[i]['name'],
                              style: TextStyle(fontFamily: "Montserrat",fontSize: 20),),
                            ),
                            Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Text(" Price : ${_meals[i]['Price']} Dz",style: TextStyle(color: Gris)),
                                    
                                  ],
                                ),
                                ),],

                            ),
                       
                        ],),
                      ),)
                  ],
                ),

            ),),

          );
        }
        ),
    );
  }
  //_loadmeals() async {
    //var response = await Network().getData('/meals');
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