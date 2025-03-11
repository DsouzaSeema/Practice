import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_CrossFade();

}

class _CrossFade extends State<CrossFade>{
  var isFirst=true;

  @override
  // void initState() {
  //   Timer(Duration(
  //       seconds: 2), () {
  //     reload();
  //   });
  //   super.initState();
  // }
    void reload(){
      setState(() {
        if(isFirst)
        isFirst=false;
        else
          isFirst=true;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cross Fade"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.deepPurple.shade200,
              ),
              secondChild: Image.asset(
                "assets/images/bg.jpeg",
                width: 500, height: 300,
                fit: BoxFit.fill,
              ),

              sizeCurve: Curves.fastOutSlowIn,
              crossFadeState:isFirst?CrossFadeState.showFirst:CrossFadeState.showSecond,


            ),
            SizedBox(height: 21,),
            ElevatedButton(onPressed: (){
              reload();

            },
                child: Text("Show"))
          ],
        ),
      ),
    );
  }

}