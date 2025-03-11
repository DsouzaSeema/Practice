import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice2/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 2),
            (){
               Navigator.pushReplacement(
                   context, MaterialPageRoute(
                   builder:(context){
                    return DashBoardScreen();
                   }
                   )
               );
            }
            );
  }

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body: Container(
            color: Colors.blue.shade50,
           child: Center(child: Text("Splash",style: TextStyle(fontSize: 21,fontFamily: "FontMain"),)),
          ),
        );
  }
}