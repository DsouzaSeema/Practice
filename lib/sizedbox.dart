import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sizedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sized box"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body:
        Center(
          // child: ConstrainedBox(
          //   constraints: BoxConstraints(
          //     minHeight: 40,
          //     minWidth: 200,
          //     maxHeight: 60,
          //     maxWidth: 300
          //   ),
            child: Row(
              children: [
                SizedBox.square(
                  dimension: 100,
                  child: ElevatedButton(onPressed: (){},
                      child: Text("Click",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent)
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox.square(
                  dimension: 100,
                  child: ElevatedButton(onPressed: (){},
                      child: Text("Click",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent)
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox.square(
                  dimension: 100,
                  child: ElevatedButton(onPressed: (){},
                      child: Text("Click",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent)
                  ),
                ),
              ],
            ),
          ),

    );
  }

}