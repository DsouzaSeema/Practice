import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget{
  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  var nameController=TextEditingController();

  static const String KEYNAME="name";
  var nameValue="No Value";
  @override
  void initState() {
    super.initState();
    getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared preference"),
        backgroundColor: Colors.blueGrey,
      ),
      body:Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    label:Text("Name"),
                    border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21)
                ),
              ),),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: ()async{
                var name=nameController.text.toString();
                var prefs=await SharedPreferences.getInstance();
                prefs.setString(KEYNAME, name);

              },
                  child: Text("save")),
              SizedBox(height: 11,),
              Text(nameValue)
            ],
          ),
        ),
      ),
    );
  }

  void getValue() async{
    var prefs= await SharedPreferences.getInstance();
    var getName=prefs.getString(KEYNAME);
    nameValue=getName ?? "No value saved";
    setState(() {

    });
  }
}