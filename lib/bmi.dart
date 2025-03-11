import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bmi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_HomePage();


}

class _HomePage extends State<Bmi>{
  var wtController=TextEditingController();
  var ftController=TextEditingController();
  var inController=TextEditingController();
  var result="";
  Color bgcolor=Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        backgroundColor: Colors.blue,
      ),
      body:Container(
        color: bgcolor,
        child: Center(
          child: Container(
            color: bgcolor,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BMI",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700),),
                SizedBox(height: 21,),

                TextField(
                  controller:wtController ,
                  decoration: InputDecoration(
                    label: Text("Enter weight in KG"),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller:ftController ,
                  decoration: InputDecoration(
                      label: Text("Enter height in ft"),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),

                TextField(
                  controller:inController ,
                  decoration: InputDecoration(
                      label: Text("Enter height in inch"),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),

                ElevatedButton(onPressed: (){
                  var wt=wtController;
                  var ft=ftController;
                  var inch=inController;
                  if(wt!="" && ft!="" && inch!=""){
                    var iwt=int.parse(wt.text.toString());
                    var ift=int.parse(ft.text.toString());
                    var iinch=int.parse(inch.text.toString());

                    var ht=(ift*12)+iinch;
                    var Tcm=ht*2.54;
                    var Tm=Tcm/100;
                    var bmi=iwt/(Tm*Tm);
                    var msg="";
                    if (bmi>25){
                      msg="You are over weight";
                      bgcolor=Colors.orangeAccent.shade200;
                    }else if(bmi<18){
                      msg="You are under weight";
                      bgcolor=Colors.redAccent.shade200;
                    }else{
                      msg="You are healthy";
                      bgcolor=Colors.greenAccent.shade200;
                    }
                    setState(() {
                      result="Your BMI is:${bmi.toStringAsFixed(2)} /n $msg";
                    });
                  }
                  else{
                    setState(() {
                      result="Please fill all the fields";
                    });
                  }
                },
                child:Text("Calculate")),
        SizedBox(
          height: 11,
        ),
                Center(child: Text(result,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "FontMain",fontSize: 25),))
              ],
            ),
          ),
        ),
      ) ,
    );
  }

}