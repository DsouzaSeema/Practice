import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWheelScrollview extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ListWheelScrollview();
}

class _ListWheelScrollview extends State<ListWheelScrollview>{
  var arrIndex=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListWheelScrollview"),
        backgroundColor: Colors.blueGrey,
      ),
      body:ListWheelScrollView(
          itemExtent: 100,
          children: arrIndex.map((value)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text('$value',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(21)
              ),
            width: double.infinity,
                  ),
          )).toList()
      ) ,
    );
  }

}