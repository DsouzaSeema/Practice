import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//web gradient -> from where we can get the colors combination too
class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gradient Background"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffd9afd9),
                  Color(0xff97d9e1),
                Colors.black38

                ],
              begin: FractionalOffset(1.0,0.0),
              end: FractionalOffset(0.0, 1.0),
              stops: [0.0,0.0,1.0]
            ),

            // gradient: RadialGradient(
            //     colors: [
            //       Color(0xffd9afd9),
            //       Color(0xff97d9e1),
            //      ],
            // center: Alignment.topLeft,
            // stops: [0.5,1.0]
            // ),

          ),
          child: Center(child: Text("Gradient Background",style: TextStyle(fontFamily: "FontMain",fontSize: 40,fontWeight: FontWeight.bold),)),
        )
    );
  }
}
