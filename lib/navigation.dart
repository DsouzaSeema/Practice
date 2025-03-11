import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice2/intro.dart';

class Navigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _HomePage();

}
class _HomePage extends State<Navigation>{
  var nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
        backgroundColor: Colors.blue,
      ),
      body:  Center(

        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome",style: TextStyle(fontSize: 40,fontFamily: "FontMain"),),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: nameController,
              ),
              SizedBox(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,MaterialPageRoute(
                        builder: (context){
                          return Intro(nameController.text.toString());
                        }));
                  },
                  child: Text("Next",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}