import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var arrColors=[Colors.deepOrangeAccent,
    Colors.blue,Colors.deepPurple,Colors.blueGrey,Colors.black,Colors.green,Colors.amberAccent];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Grid View"),
      ),

      body:
      Column(
        children: [
          // Container(
          //   height: 400,
          //   child: GridView.count(
          //     crossAxisCount: 4,
          //     crossAxisSpacing: 11,
          //     mainAxisSpacing: 11,
          //     children: [
          //       Container(color: arrColors[0],),
          //       Container(color: arrColors[1],),
          //       Container(color: arrColors[2],),
          //       Container(color: arrColors[3],),
          //       Container(color: arrColors[4],),
          //       Container(color: arrColors[5],),
          //       Container(color: arrColors[6],),
          //       Container(color: arrColors[0],),
          //       Container(color: arrColors[1],),
          //
          //
          //     ],
          //   ),
          // ),
          Container(
            height: 70,
          ),
          Container(
            height: 350,
            child: GridView.extent(maxCrossAxisExtent:250,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(color: arrColors[0],),
              Container(color: arrColors[1],),
              Container(color: arrColors[2],),
              Container(color: arrColors[3],),
              Container(color: arrColors[4],),
              Container(color: arrColors[5],),
              Container(color: arrColors[6],),
            ],),
          ),
          Container(
            height: 50,
          ),
          Container(
            height: 400,
            child: GridView.builder(
                 itemBuilder: (context,index){
                    return Container(color: arrColors[index],);
                 },
            itemCount: arrColors.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11),
            ),
          )
        ],
      )

    );
  }
}