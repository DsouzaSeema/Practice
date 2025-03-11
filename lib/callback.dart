import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallBack extends StatelessWidget{
  callBack(){
    print("Clicked!!");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("call back function"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: callBack,
            child: Text("CLick here")),
      ),
    );

  }
}