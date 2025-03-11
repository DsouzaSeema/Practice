import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice2/ui_helper/util.dart';
import 'package:practice2/widgets/rounded_btn.dart';

class CustomWidget2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 50,
              child: RoundedBtn(
                  btnName: "Login",
              icon: Icon(Icons.lock,color: Colors.white,),
              callBack: (){print("Logged In");},
              textStyle: mTextStyle().copyWith(color: Colors.white)
              ),
            ),
            Container(
              height: 11,
            ),
            Container(
              width: 200,
              height: 50,
              child: RoundedBtn(
                  btnName: "Play",
                  bgColor: Colors.deepOrangeAccent,
                  icon: Icon(Icons.play_arrow,color: Colors.white,),
                  callBack: (){print("Played");},
                  textStyle: mTextStyle().copyWith(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
  
}