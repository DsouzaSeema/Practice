import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datePicker extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("date picker"),
      ),
      body:Column(
        children: [
          Text("select date",style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed: () async {
            DateTime? datePicked=await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2025),
                lastDate: DateTime(2026));
                if(datePicked!=null){
                  print("Date selected:${datePicked.year}:${datePicked.month}:${datePicked.day}");
                }
          }, child: Text("show")),

          Text("select time",style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed: ()async{
            TimeOfDay? timePicked=await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
            initialEntryMode: TimePickerEntryMode.input);
            if(timePicked!=null){
              print("Time selected:${timePicked.hour}:${timePicked.minute}");
            }
          },
              child: Text("show"))
        ],
      )
    );
  }

}