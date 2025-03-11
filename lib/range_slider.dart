import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rangeslider extends StatefulWidget{
  @override
  State<Rangeslider> createState() => _RangesliderState();
}

class _RangesliderState extends State<Rangeslider> {
  RangeValues values=RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels=RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child:RangeSlider(
          values:values,
          labels:labels,
          divisions: 10,
          activeColor: Colors.green,
          inactiveColor: Colors.green.shade50,
          min:0,
          max: 100,
          onChanged:(newValue){
            values=newValue;
            print("${newValue.start},${newValue.end}");
            setState(() {
            });
          },
        ),
      ),
    );
  }
}