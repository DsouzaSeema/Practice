import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("CardView")),
      body: Center(
        child: Card(
          shadowColor: Colors.green,
        elevation: 20,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hello World",style:
            TextStyle(fontSize: 30,fontFamily: "FontMain",
                  ),
                ),
          ),
      )
    )
    );
  }

}