import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class dateTime extends StatelessWidget{

var time =DateTime.now();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("DateTime"),
     ),
     body:
     Center(
         child: Container(
       width: 400,
       height: 400,
       child: Column(
         children: [
           Text("Current month ${time.month}",style: TextStyle(fontSize: 25),),
           Text("Current Time = ${time.hour}: ${time.minute}: ${time.second}",style: TextStyle(fontSize: 25),),
           Text("Current Time=> ${DateFormat('Hms').format(time)}",style: TextStyle(fontSize: 25),),
           Text("Current Date=> ${DateFormat('yMMMd').format(time)}",style: TextStyle(fontSize: 25),),
           Text("Current Day=> ${DateFormat('EEEE').format(time)}",style: TextStyle(fontSize: 25),),

           ElevatedButton(onPressed: (){
           },
               child:Text("Current Time"))
         ],
       ),
     )),
   );
  }}