import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyHomePage();

}
class _MyHomePage extends State<Calculator>{
  var no1Controller=TextEditingController();
  var no2Controller=TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color:Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: (){
                              var no1=int.parse(no1Controller.text.toString());
                              var no2=int.parse(no2Controller.text.toString());
                              var sum=no1+no2;
                              result="The sum of $no1 and $no2 is $sum";
                              setState(() {});
                          },
                          child: Text("Add")),
                      ElevatedButton(
                          onPressed: (){
                            var no1=int.parse(no1Controller.text.toString());
                            var no2=int.parse(no2Controller.text.toString());
                            var dif=no1-no2;
                            result="The difference between $no1 and $no2 is $dif";
                            setState(() {});
                          },
                          child: Text("Subtract")),
                      ElevatedButton(
                          onPressed: (){
                            var no1=int.parse(no1Controller.text.toString());
                            var no2=int.parse(no2Controller.text.toString());
                            var prod=no1*no2;
                            result="The product of $no1 and $no2 is $prod";
                            setState(() {});
                          },
                          child: Text("Multiply")),
                      ElevatedButton(
                          onPressed: (){
                            var no1=int.parse(no1Controller.text.toString());
                            var no2=int.parse(no2Controller.text.toString());
                            var div=no1/no2;
                            result="The division result  of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                            setState(() {});
                          },
                          child: Text("Divide")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(result,
                    style: TextStyle(fontSize: 25,color: Colors.lightGreen),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}