import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.indigoAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.indigoAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.indigoAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.indigoAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }

}