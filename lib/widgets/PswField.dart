import 'package:flutter/material.dart';
import 'package:flutter_application_food/constantes.dart';
class PswField extends StatefulWidget {
  @override
  _PswFieldState createState() => _PswFieldState();
}


class _PswFieldState extends State<PswField> {
  @override
  
  bool passwordVisible = true ;
  var password ; 

 
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
           boxShadow: [ BoxShadow( 
             blurRadius: 15,
             color: Colors.grey.withOpacity(0.3),
             offset: Offset(7,8), )]),
      
      child: TextFormField(
        
          cursorColor: Gris,
          decoration: InputDecoration(
           border: InputBorder.none,
           hintText: "password",
           hintStyle: TextStyle(fontFamily: 'Montserrat',fontSize: 14,color: Gris,),
         icon: IconButton(
           icon: Icon(
             passwordVisible ? Icons.visibility : Icons.visibility_off,
             ),
           iconSize: 18,
           onPressed: (){
             setState(() {
                          passwordVisible = ! passwordVisible;
                          });
             
          
           },
           

           
     color: Gris,
     
         ),
          ),
          keyboardType: TextInputType.visiblePassword,
          obscureText: passwordVisible,
          validator: (passwordValue) {
        if (passwordValue.isEmpty) {
          return 'Please enter password';
        }

        return null;
      },
      onChanged: (value) {
        password = value;
      },
          
          
      ),
 );
      
  }
}
