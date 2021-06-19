import 'package:flutter/material.dart';
import 'package:flutter_application_food/constantes.dart';
class Button extends StatelessWidget {
  final String text;
  final Function press;
  
  

  const Button({
    Key key,
    this.text,
    this.press,
  
   
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
       boxShadow: [  
          BoxShadow(  
            blurRadius: 15,
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0,5), )]),
            child: FlatButton(
              
              
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
              minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12),
             color: Jaune,
              onPressed: press,
                child:
                Text(text,
                 style: TextStyle(fontSize: 17,color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.w400),
                   ), 
                
                   ),
                  );
  }
}