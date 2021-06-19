import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Category.dart';
import 'package:flutter_application_food/CustomerScreens/Profile.dart';
import 'package:flutter_application_food/CustomerScreens/RestauList.dart';
import 'package:flutter_application_food/CustomerScreens/cart.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:flutter_application_food/utils/api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
 
 List<IconData> _icons= [
   
   FontAwesomeIcons.hamburger,
   FontAwesomeIcons.cheese,
   FontAwesomeIcons.pizzaSlice,
   FontAwesomeIcons.hotdog,
   FontAwesomeIcons.iceCream,  
 ];
 // var restaurant = [];
  
  var _restau = [
    {
  'name':'To good To go ',
  'adress':'57 boulevard pasteur ',
  'Phone':'0553128636 ',
  'state': 'open',

},
   {
     'name':'Le coins des Pates',
     'adress':'57 boulevard Pasteur',
     'Phone':'0554236987',
     'state': 'open',


   },
   {
  'name':'Magic Bakery',
  'adress':'99 Rue les martyres , Combattant ',
  'Phone':'0555528636 ',
  'state': 'open',

},

{
  'name':'Alhambra ',
  'adress':' Uv 17 Nouvelle Ville ',
  'Phone':'0554524536 ',
  'state': 'open',

},


    
  ];
   //@override
  //void initState() {
    //super.initState();
    //_loadrestaurants();
  //}
  
  
 Widget _buildIcon (int index){
   return GestureDetector(
   onTap: (){
     setState(() {
       Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Categories()));});
                  },
   child: Container(
     height: 60.0,
     width: 60.0,
     decoration: BoxDecoration(
       boxShadow: [ BoxShadow(  
         blurRadius: 15,
         color: Colors.grey.withOpacity(0.3),
         offset: Offset(2, 3),)],
     color: Colors.white,
     borderRadius: BorderRadius.circular(30.0),          
   ) ,
   child:Icon(
     _icons[index],
     size: 25.0,
     color: Jaune,
   ) ,
   ),
  );
 }
  @override

  Widget build(BuildContext context) {   
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: GrisC,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: RichText(
            text: TextSpan(
              style: 
                  
                TextStyle(fontWeight: FontWeight.bold ,fontFamily: 'Montserrat'),
              children: [
                TextSpan(
                  text: "Hello, ",
                  style: TextStyle(color: Colors.black,fontSize: 20),
                ),
                TextSpan(
                  text: "Malak !",
                  style: TextStyle(color: Jaune ,fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
       children: [
         Container(
          height: 50,
        margin: EdgeInsets.all(17),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [ BoxShadow(
                    blurRadius: 15,
                    color: Colors.grey.withOpacity(0.3),
                    offset: Offset(2, 3),)],
                  
              ),
        child: TextField(
        
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Gris,
            
          ),
          hintText: "Search Here",
          hintStyle: TextStyle(color: Gris),
        ),
        ),
    ),
    
    Padding(
      padding: EdgeInsets.all(20),
      child: Text("Cayegories", style: 
      TextStyle(
      fontFamily:"Montserrat" ,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      ),
      ),
      ),
   
      Padding(
      padding: EdgeInsets.all(10),
      child: Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:      
               _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
      ),
    ),
    SizedBox(height: 10,),
    Column(children: [
      Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Top Of The month", style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold, fontSize: 16 ,),),
          RichText(text: TextSpan(
            text: 'See All',

            style: TextStyle( fontSize: 16,decoration: TextDecoration.underline,
                color: Colors.black
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return RestauList();
                  },),);
              },
          ),
          ),
        ],
      ),
      ),
     
    ],
    ),
    SizedBox(height: 10,),
     
      
       Container(
         height: 800,
         
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        
        itemCount: _restau.length,
        itemBuilder:    (BuildContext context, int index) {
          return  InkWell(
          onTap: (){
            Navigator.push(
                    context, MaterialPageRoute(builder: (context) {
                    return Categories();
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
                            child: Text(_restau[index]['name'],
                            style: TextStyle(fontFamily: "Montserrat",fontSize: 20),),
                          ),
                          Row(
                            children: [
                              Expanded(child: Row(
                                children: [
                                  Text(_restau[index]['adress'],style: TextStyle(color: Gris)),
                                  
                                ],
                              ),
                              ),],

                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text(" Phone : ${_restau[index]['Phone']}"),
                              SizedBox(width: 5,),
                             
                            ],
                          ),
                          SizedBox(height: 10,), 
                           Row(
                            children: [
                              Text( _restau[index]['state']),
                              SizedBox(width: 5,),
                             
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
      ),      
       ],  
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },),);
              },
              icon: Icon(
                FontAwesomeIcons.home,
                color: Gris,
                size: 30.0,
              ),
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon:IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cart();
                    },),);
              },
              icon: Icon(
                FontAwesomeIcons.cartArrowDown,
                color: Gris,
                size: 30.0,
              ),
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Profile();
                    },),);

              },
              icon: Icon(
                FontAwesomeIcons.userAlt,
                color: Gris,
              ),
             
            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
    );
      
    
  }
  //_loadrestaurants() async {
    //var response = await Network().getData('/restaulist');
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
   
  
 

  
