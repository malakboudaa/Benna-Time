import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Category.dart';
import 'package:flutter_application_food/constantes.dart';

class RestauList extends StatefulWidget {
  

  @override
  _RestauListState createState() => _RestauListState();
}
//var _restaurant = [];
var _restau = [
  
{
  'name':'Magic House ',
  'adress':' Belle Vue , Constantine ',
  'Phone':'05664528636 ',

},
{
  'name':'Alhambra ',
  'adress':' Uv 17 Nouvelle Ville ',
  'Phone':'0554524536 ',

},
{
  'name':'La mega ',
  'adress':'54 Rue Chaabane Mostafa ',
  'Phone':'0556528687 ',

},
 {
     'name':'Le coins des Pates',
     'adress':'57 boulevard Pasteur',
     'Phone':'0554236987',
     'state': 'open',


   },
{
  'name':'La caléche plus ',
  'adress':'32 Rue Didouche Morad ',
  'Phone':'0565128636 ',

},
{
  'name':'Magic Bakery',
  'adress':'99 Rue les martyres , Combattant ',
  'Phone':'0555528636 ',

},
{
  'name':'To good To go ',
  'adress':'57 boulevard pasteur ',
  'Phone':'0553128636 ',

},
];
 //@override
  //void initState() {
    //super.initState();
    //_loadrestaurants();
  //}
class _RestauListState extends State<RestauList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _restau.length,
        itemBuilder: (context , i)
        {
          return InkWell(
            onTap: (){
              Navigator.pushReplacement(
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

                      Image.asset("assets/images/foodone.jpg" , height: 80,)),
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
                              child: Text(_restau[i]['name'],
                              style: TextStyle(fontFamily: "Montserrat",fontSize: 20),),
                            ),
                            Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Text(_restau[i]['adress'],style: TextStyle(color: Gris)),
                                    
                                  ],
                                ),
                                ),],

                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text(" Phone : ${_restau[i]['Phone']}"),
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