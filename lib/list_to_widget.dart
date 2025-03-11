import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListToWidget extends StatelessWidget{
  var arrData=[
    {
    'name':'one',
    'mob no':123243421,
    'unread':'2'},
    {'name':"two",
        'mob no':123243421,
      'unread':'3'},
    {'name':"three",
        'mob no':123243421,
      'unread':'1'},
    {"name":"four",
        'mob no':123243421,
      'unread':'5'},
    {"name":"five",
        'mob no':123243421,
      'unread':'1'},
    {"name":"six",
        'mob no':123243421,
      'unread':'2'},
    {"name":"seven",
        'mob no':123243421,
      'unread':'2'},
    {"name":"eight",
        'mob no':123243421,
      'unread':'3'},
    {"name":"nine",
        'mob no':123243421,
      'unread':'1'},
    {"name":"ten",
        'mob no':123243421,
      'unread':'4'}];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("List to widget",style: TextStyle(color: Colors.white,fontSize: 20),),
       backgroundColor: Colors.indigo,
     ),
     body: Container(
        child: ListView(
          children: arrData.map((value){
           return ListTile(
             leading: Icon(Icons.account_circle),
             title: Text(value['name'].toString()),
    subtitle: Text(value['mob no'].toString()),
    trailing: CircleAvatar(
    radius: 12,
    backgroundColor: Colors.lightGreen.shade100,
    child: Text(value['unread'].toString())),

           );
          }
    ).toList()
          //Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(21),
          //           color: Colors.blueGrey,
          //
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Center(child: Text(value,style: TextStyle(fontSize: 25,fontFamily: "FontMain",color: Colors.white),)),
          //         ),
          //       ),
          //     ),
          //   );
          // }).toList(),
        //),
     ),

   )
   );
  }

}