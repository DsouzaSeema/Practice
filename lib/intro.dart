import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget{
  var nameFromHome;

  Intro(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text("Intro"),
     ),
     body:Container(
       color: Colors.grey,
       child: Center(
           child:
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Welcome $nameFromHome",
                 style: TextStyle(
                     fontFamily: "FontMain",fontSize: 45,fontWeight: FontWeight.bold
                 ),
               ),
               ElevatedButton(onPressed: (){
                 Navigator.pop(context);
               },
                   child: Text("Back"))
       ],
           )
     )
   )
   );
  }
  
}