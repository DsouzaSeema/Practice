import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice2/detail_page.dart';

class HeroAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_HeroAnimation();

}

class _HeroAnimation extends State<HeroAnimation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        backgroundColor: Colors.blueGrey,
      ),
      body:Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.brown,
          child:  Center(
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder:(context) => DetailPage()));
              },
              child: Hero(
                  tag:'background' ,
                  child:Image.asset("assets/images/bg.jpeg",width: 200,height: 200,fit: BoxFit.fill,) ),
            ),
          ),
        ),
      ),
    );
  }

}