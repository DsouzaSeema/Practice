import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RippleEffectAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_RippleEffectAniamtion();

}
class _RippleEffectAniamtion extends State<RippleEffectAnimation> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;
  var listRadius =[150.0,200.0,250.0,300.0,350.0];
  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 4),lowerBound: 0.5);
    animation=Tween(begin: 0.0,end: 1.0).animate(animationController);
    animationController.addListener((){

    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ripple Effect Animation"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child:Stack(
          alignment: Alignment.center,
          children: listRadius.map((radius){
            return Container(
              width: radius*animation.value,
              height: radius*animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(1.0-animation.value)
              ),
            );
          }).toList()
        )
      ),
    );
  }

}