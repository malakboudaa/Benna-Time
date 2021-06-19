import 'package:flutter/material.dart';
import 'package:flutter_application_food/ManagerScreens/Homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constantes.dart';

class Orders extends StatefulWidget {
  

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
   var _Orders = [
  
{
  'Address':'57 boulevard pasteur , Bellevue ',
  'Meal':'Pizza Boisée Viande hachée ',
  'Quantity':'2',
  

},
{
  'Address':'45 hanachi omar , lekhroub ',
  'Meal':'Pizza Boisée Poulet',
  'Quantity':'1',
  

},
{
  'Address':'UV 18 Nouvelle Ville  ',
  'Meal':'Pizza Sauce rouge Tomate ',
  'Quantity':'3',
  

},


];
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
              FontAwesomeIcons.arrowLeft,
              
            )
          )
        ],
        
      ),
       body: ListView.builder(
        itemCount: _Orders.length,
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

                      Icon(
                        FontAwesomeIcons.userAlt,
                      )
                      ),
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
                              child: Text(_Orders[i]['Address'],
                              style: TextStyle(fontFamily: "Montserrat",fontSize: 20),),
                            ),
                            Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Text( _Orders[i]['Meal'],style: TextStyle(color:Gris)),
                                    
                                  ],
                                ),
                                ),
                                ],

                            ),
                             Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Text(" Quantity  : ${_Orders[i]['Quantity']} Dz",style: TextStyle(color:Gris)),
                                    
                                  ],
                                ),
                                ),
                                ],

                            ),
                            Row(
                              children: [
                                Expanded(child: 
                                Row(
                                  children: [
                                
                                    Container(
                                      
                                      height: 25,
                                      width: 40,
                                      child: IconButton(
                                        onPressed: (){
                                          setState(() {                                            
                                         });
                                        },
                                        iconSize: 25,
                                        color: Jaune,
                                        icon: Icon(FontAwesomeIcons.checkSquare),
                                      ),
                                    ),
                                    Text("Confirm"),
                                    
                                    Container(
                                      
                                      height: 25,
                                      width: 40,
                                      child: IconButton(
                                        onPressed: (){
                                          setState(() {                                            
                                         });
                                        },
                                        iconSize: 25,
                                        color: Jaune,
                                        icon: Icon(FontAwesomeIcons.ban),
                                      ),
                                    ),
                                    Text("Delete"),
                                  ],
                                ),
                                ),
                                ],

                            ),
                            
                             
                        ],),
                      ),)
                  ],
                ),

            ),
            ),

          );
        }
        ),
        

    );
  }
}