import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class richText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Rich Text"),
      backgroundColor: Colors.brown,
    ),
    body: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.grey,fontSize: 21),
            children: <TextSpan>[
              TextSpan(text: "Hello ",),
              TextSpan(text: "World!!  ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold)
              ),
              TextSpan(text: "Welcome to "),
              TextSpan(text: "Flutter",
                  style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: "FontMain")
              )
            ]
    ))
  );
  }
  
}