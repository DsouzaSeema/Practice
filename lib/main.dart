import 'package:flutter/material.dart';
import 'package:practice2/Dio.dart';
import 'package:practice2/bmi.dart';
import 'package:practice2/calculator.dart';
import 'package:practice2/callback.dart';
import 'package:practice2/cliprrect.dart';
import 'package:practice2/constraint_box.dart';
import 'package:practice2/cross_fade.dart';
import 'package:practice2/custom_widget2.dart';
import 'package:practice2/cardView.dart';
import 'package:practice2/customWidget.dart';
import 'package:practice2/datePicker.dart';
import 'package:practice2/dateTime.dart';
import 'package:practice2/font_theme.dart';
import 'package:practice2/foo_animation.dart';
import 'package:practice2/gradient.dart';
import 'package:practice2/gridView.dart';
import 'package:practice2/hero_animation.dart';
import 'package:practice2/icon_widget.dart';
import 'package:practice2/list_to_widget.dart';
import 'package:practice2/list_wheel_scrollview.dart';
import 'package:practice2/navigation.dart';
import 'package:practice2/range_slider.dart';
import 'package:practice2/richtext.dart';
import 'package:practice2/ripple_effect_animation.dart';
import 'package:practice2/shared_preference.dart';
import 'package:practice2/sizedbox.dart';
import 'package:practice2/splash_screen.dart';
import 'package:practice2/stack_widget.dart';
import 'package:practice2/stateful_widget.dart';
import 'package:practice2/textInput.dart';
import 'package:practice2/tween_animation.dart';
import 'package:practice2/wrap_widget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:TextTheme(
            headlineLarge:TextStyle(fontFamily: "FontMain",fontSize: 50),
            headlineMedium:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
          )
      ),
      home:dio(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class DashBoardScreen extends StatelessWidget{
  var names=["seema","ashu","ram","rama","raman","ramanujan","rahim","reheman","john","james"];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title:Text("Dashboard"),
        ),
        body:
            //Circle Avatar
          Center(
              child: CircleAvatar(
                child: Container(
                  width: 60,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/avatar.png')),
                      Text("Name")
                      ]
                  )
                ),
                backgroundColor: Colors.orangeAccent,
                maxRadius: 60,
            ),
          )





        //ListTile

        // ListView.separated(itemBuilder:(context,index){
        //   return ListTile(
        //     leading: Text("$index"),
        //     title: Text(names[index]),
        //     subtitle:Text("Number") ,
        //     trailing: Icon(Icons.add),
        //   );
        // }, separatorBuilder:(context,index){
        //   return Divider(height: 30,thickness: 2,);
        // }, itemCount: names.length)
        //






    //Expanded widget  margin&padding
  //       Row(
  //         children:[
  //           Expanded(
  //             flex: 1,
  //             child: Container(
  //               width: 50,
  //               height: 100,
  //               color: Colors.blue,
  //             ),
  //           ),
  //
  //           Container(
  //             width: 50,
  //             height: 100,
  //             color: Colors.amberAccent,
  //             margin: EdgeInsets.all(11),
  //             child: Padding(
  //               padding: const EdgeInsets.only(top:8.0,bottom: 4),
  //               child: Text("margin and padding",style: TextStyle(fontSize: 24),),
  //             ),
  //           ),
  //           Expanded(
  //             flex: 2,
  //             child: Container(
  //               width: 50,
  //               height: 100,
  //               color: Colors.blueGrey,
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Text("padding",style: TextStyle(fontSize: 24),),
  //           ),
  //
  //         ]
  //       ),
  //
     );
  }

  }

