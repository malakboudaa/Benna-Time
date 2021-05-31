import 'package:flutter/material.dart';
import 'package:flutter_application_food/constantes.dart';
class EmailField extends StatefulWidget {
  final Icon icon ;
  final String htxt;
  final TextInputType type;
   
 
  const EmailField({Key key ,this.icon, this.htxt , this.type}) : super(key: key);

  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  var email;
  @override
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
             offset: Offset(5,8), )]),
      
      child: TextFormField(
        
          cursorColor: Gris,
          decoration: InputDecoration(
           border: InputBorder.none,
           hintText: widget.htxt,
           hintStyle: TextStyle(fontFamily: 'Montserrat',fontSize: 14,color: Gris,),
           icon:widget.icon,
          ),
          keyboardType: widget.type,
          validator: (emailValue) {
        if (emailValue.isEmpty) {
          return 'Please enter email';
        }
        return null;
      },
       onChanged: (value) {
        email = value;
      },
        
          
          
      ),
 );
  }
}