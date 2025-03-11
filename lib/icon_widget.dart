import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Widget"),
        backgroundColor: Colors.lightGreen,
      ),
      body:
      Center(
          child: Row(
            children: [
              Icon(
                Icons.add_business_rounded,
                size: 50,
                color: Colors.black38,
              ),
              SizedBox(width: 11,),
              FaIcon(
                  FontAwesomeIcons.google,
              size: 50,
              color: Colors.indigo,)
            ],
          )
      ),
    );
  }

}