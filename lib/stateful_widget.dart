import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _HomePageState();

}
class _HomePageState extends State<Stateful>{
  var count=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Stateful"),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Count: $count",style: TextStyle(fontSize: 25),),
           ElevatedButton(onPressed: (){
             setState(() {
               count++;
             });
           },
               child: Icon(Icons.add,size: 25,),)

         ],
       ),
     ),
   );

  }

}