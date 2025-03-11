import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_TweenAnimation();

}
class _TweenAnimation extends State<TweenAnimation>
    with SingleTickerProviderStateMixin
{
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 5));
    animation=Tween(begin: 200.0,end: 0.0).animate(animationController);
    colorAnimation=ColorTween(begin:Colors.blueGrey,end: Colors.green ).animate(animationController);
    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }

}