import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/Homepage.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:flutter_application_food/utils/api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MealsList extends StatefulWidget {
  

  @override
  _MealsListState createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {
    //var _mealss = [];
  
    
   
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
    //_loadMeals();
  //}
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
    
      body: ListView.builder(
        itemCount: _meals.length,
        itemBuilder: (context , i,)
        {
          return InkWell(
            onTap: (){
              

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
                                    Text(" Price : ${_meals[i]['Price']} Dz",style: TextStyle(color:Gris)),
                                    
                                  ],
                                ),
                                ),
                                ],

                            ),
                            SizedBox(height: 20,),
                             Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Container(
                                      
                                      height: 32,
                                      width: 80,
                                      child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            _meals.remove(i , );
                                                                                      
                                         });

                                        },
                                        iconSize: 32,
                                        color: Jaune,
                                        icon: Icon(Icons.delete),
                                      ),
                                    ),
                                    
                                    
                                  ],
                                ),
                                ),
                                ],

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
   //_loadMeals() async {
    //var response = await Network().getData('/meals');
    //if (response.statusCode == 200) {
     // setState(() {
      //  _meals = json.decode(response.body);
     // });
    //} else {
     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //  content: Text('Error ' + response.statusCode),
      //));
    //}
  //}
}