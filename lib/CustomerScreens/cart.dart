import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/gps.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Home.dart';
import 'Profile.dart';


int quantity = 1;
double total = 450.0;

class Cart extends StatefulWidget {
  @override
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<Cart> {
  int _currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 0.0),
                        colors: [
                          Jaune,
                          Colors.yellow,
                        ],
                        
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "PIzza Boisé Viande Hachée ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "Montserrat"),
                              ),
                            ],
                          ),
                        ),
                        pizzaitem(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ((MediaQuery.of(context).size.width - 175) / 2),
                      top: (MediaQuery.of(context).size.height+175) / 5),
                  child: Hero(
                    tag: "pizzaitem",
                    child: ClipOval(
                      child: Container(
                        child: new Image.asset(
                          "assets/images/pizzab.jpg",
                          fit: BoxFit.cover,
                          width: 175,
                          height: 175,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Quantity",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 25, fontFamily: "Montserrat"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Jaune,
                          borderRadius: BorderRadius.circular(250),
                        ),
                        width: 100,
                        height: 35,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: remove,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Text(
                                "$quantity",
                                style: TextStyle(
                                    //color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              Container(
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: add,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Total amount"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("\DZ $total"),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Pasta penne à l'italienne avec sauce trois fromages"),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Jaune,
                          child: Text("Place Order",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22 , fontFamily: "Montserrat")),
                          onPressed: () {
                             Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Gps()));
                            
                          },
                        ),
                      ),
                
                    ],
                  )
                ],
              ),
            ),
          
          ],
        ),
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
                Navigator.pushReplacement(context, MaterialPageRoute(
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
                Navigator.pushReplacement(context, MaterialPageRoute(
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
                 Navigator.pushReplacement(context, MaterialPageRoute(
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

  void add() {
    setState(() {
      quantity = quantity + 1;
      total = 450.0 * quantity;
    });
  }

  void remove() {
    setState(() {
      if (quantity > 1) {
        quantity = quantity - 1;
        total = 450.0 * quantity;
      }
    });
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.3);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height /1.3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget pizzaitem() {
  
  return Container(
    child: Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "\DZ 450" ,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                  
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          
          
        ],
       
      ),
    ),
  );
  
}