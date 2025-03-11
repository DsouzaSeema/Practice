import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.teal,
            width: 200,
            height: 200,
          ),
          Positioned(
            child: Container(
              width: 160,
              height: 160,
              color: Colors.blue,
            ),
          ),
          Positioned(
            left: 42,
            top: 42,
            child: Container(
              width: 120,
              height: 120,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
  
}