import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        backgroundColor: Colors.blueGrey,
      ),
      body:Container(
        child: Hero(
            tag: "background",
            child: Image.asset("assets/images/bg.jpeg")),
      ) ,
    );
  }

}