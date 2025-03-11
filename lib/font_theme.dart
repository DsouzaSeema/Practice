import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice2/ui_helper/util.dart';

class font extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("font"),
        ),
        body: Column(
          children: [
            Text("hello world",style: Theme.of(context).textTheme.headlineLarge),
            Text("hello world",style: Theme.of(context).textTheme.headlineMedium),
            Text("hello world",style: Theme.of(context).textTheme.headlineLarge),
            Text("hello world",style: mTextStyle(fontWeight: FontWeight.w100)),
            Text("hello world",style: Theme.of(context).textTheme.headlineLarge),
            Text("hello world",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.orange)),

          ],
        ),
      );
  }

}