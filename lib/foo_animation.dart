import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooAnimation extends StatefulWidget{
  @override
  State<FooAnimation> createState() => _FooAnimationState();
}

class _FooAnimationState extends State<FooAnimation> {
  var _width=200.0;
  var _height=100.0;
  Decoration myDecor=BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Colors.blue.shade700
  );
  bool flag=true;
  var myOpacity=1.0;
  bool flag2=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo Animation"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _width,
              height: _height,
              curve: Curves.slowMiddle,
              decoration:myDecor ,
            ),
            SizedBox(
              height: 21,
            ),
            ElevatedButton(
                onPressed:(){

                  setState(() {
                    if(flag)
                    {
                      _width=100.0;
                      _height=200.0;
                      myDecor=BoxDecoration(borderRadius: BorderRadius.circular(61),color: Colors.orange.shade700);
                      flag=false;
                    }else
                      {
                        _width=200.0;
                        _height=100.0;
                        myDecor=BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.blue.shade700);
                        flag=true;
                      }

                  });
                },
                child: (
                    Text("Animate")
                )
            ),
            SizedBox(height: 21,),
            AnimatedOpacity(
                opacity: myOpacity,
                duration: Duration(seconds: 2),
                curve: Curves.elasticOut,
                child: Container(
                  height: 200,
                  width: 200,
                  color:Colors.deepPurple,
                ),
            ),
                SizedBox(height: 21,),
            ElevatedButton(
                onPressed: (){
                setState(() {
                  if(flag2) {
                    myOpacity = 0.0;
                    flag2=false;
                  }else{
                    myOpacity=0.9;
                    flag2=true;
                  }
                });
            },
                child: Text("close"))
          ],
        ),
      ),
    );
  }
}