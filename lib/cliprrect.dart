import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cliprrect extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip rrect"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
          child: ClipRRect(
            // borderRadius: BorderRadius.all(Radius.elliptical(21, 51)),
            // child: Container(
            //   color: Colors.grey.shade400,
            //   width: 500,
            //   height: 500,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(41),bottomRight: Radius.circular(61)),
                  child: Image.asset("assets/images/bg.jpeg",
                    width: 300,height: 200,fit: BoxFit.fill,)
              ),
            ),
          )
    //)

    );
  }

}