import 'package:flutter/material.dart';
import 'package:flutter_application_food/CustomerScreens/Home.dart';
import 'package:flutter_application_food/constantes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cart.dart';

class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   
   int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0.0,
        backgroundColor: GrisC,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [  
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    hintText: "First Name",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                   
                  ),
                  keyboardType: TextInputType.text
                ),
                ),
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
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                   
                  ),
                  keyboardType: TextInputType.text
                ),
                ),
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
                    hintText: "Phone",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                   
                  ),
                  keyboardType: TextInputType.phone,
                ),
                ),
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
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat', fontSize: 14, color: Gris,),

                   
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                ),
                 SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [  
                    BoxShadow(  
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0,5), )]),
                      height: 40,
                      width: double.infinity,
                      child:FlatButton(
                        onPressed: () {},
                        color: Jaune,
                        child: Center(
                          child: Text(
                            "Update",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [  
                    BoxShadow(  
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0,5), )]),
                      height: 40,
                      width: double.infinity,
                      child:FlatButton(
                        onPressed: () {},
                        color: Jaune,
                        child: Center(
                          child: Text(
                            "LogOut",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Profile",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 35,
                  letterSpacing: 1.5,
                  color: Gris,
                  
                ),
              ),
              
              
              Container(
                
                width: 180,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
              
            ],
          ),
          
          Padding(
            padding: EdgeInsets.only(bottom: 270, left: 184),
            child: CircleAvatar(
              backgroundColor: Gris,
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
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

  
  
}

