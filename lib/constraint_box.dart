import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class constraintBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Constraint box"),
       backgroundColor: Colors.grey,
     ),
     body:
       ConstrainedBox(

         constraints: BoxConstraints(
           maxWidth: 400,
           maxHeight: 500,
           minWidth: 100,
           minHeight:250,
         ),
         child: Text("Hello world",
           style: TextStyle(fontSize: 90,fontFamily: "FontMain",backgroundColor: Colors.blueGrey),),
       )
   );
  }
  
}